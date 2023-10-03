package com.ispan.eeit69.controller;

import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;

import com.ispan.eeit69.model.Item;
import com.ispan.eeit69.model.ItemCategory;
import com.ispan.eeit69.model.Review;
import com.ispan.eeit69.model.User;
import com.ispan.eeit69.repository.ItemCategoryRepository;
import com.ispan.eeit69.repository.ItemsRepository;
import com.ispan.eeit69.repository.ReviewRepository;

@Controller
public class ItemController {

	private ItemsRepository itemRepository;


	private ItemCategoryRepository itemCategoryRepository;

	private ReviewRepository reviewRepository;


	
	public ItemController(ItemsRepository itemRepository, ItemCategoryRepository itemCategoryRepository,
			ReviewRepository reviewRepository) {
		super();
		this.itemRepository = itemRepository;
		this.itemCategoryRepository = itemCategoryRepository;
		this.reviewRepository = reviewRepository;

	}
	@GetMapping("/")
	public String home(Model model,HttpSession session) {
		
		List<Item> itemsByCategory1;
		List<Item> itemsByCategory2;
		itemsByCategory1 = itemRepository.findByItemStockLessThanOrderByItemStockAsc(50); // 熱門商品
		itemsByCategory2 = itemRepository.findByDiscountIsNotNullOrderByDiscountDesc(); // 優惠商品

		model.addAttribute("items1", itemsByCategory1.subList(0, 4));
        model.addAttribute("items2", itemsByCategory2.subList(0, 4));

		
		return "index";
	}

	@GetMapping("/ItemCategory")
	public String getGamesByCategory(Model model,
	        @RequestParam(name = "category", required = false) String categoryName) {
	    List<ItemCategory> allCategories = itemCategoryRepository.findAll();
	    model.addAttribute("itemCategories", allCategories);

	    if (categoryName != null && !categoryName.isEmpty()) {
	        List<Item> itemsByCategory;
	        if ("優惠商品".equals(categoryName)) {
	            itemsByCategory = itemRepository.findByDiscountIsNotNullOrderByDiscountDesc(); // 優惠商品
	        } else if ("熱門商品".equals(categoryName)) {
	            itemsByCategory = itemRepository.findByItemStockLessThanOrderByItemStockAsc(50); // 熱門商品
	        } else {
	            itemsByCategory = itemRepository.findByItemCategoryId_CategoryName(categoryName); // 其他類別
	        }
	        model.addAttribute("items", itemsByCategory);
	        model.addAttribute("categoryName", categoryName);
	    }
	    return "ItemCategory"; // 您的視圖名稱
	}

//	@GetMapping("/game/{id}")
//	public String hello2(Model model) {
//		List<ItemCategory> allCategories = itemCategoryRepository.findAll();
//        List<Review> review = itemsService.findAll();
//        model.addAttribute("itemCategories", allCategories);
//        model.addAttribute("review",review);
//        return "Game5";
//	
//	}

	@GetMapping("/Item/{id}")
	public String showGameDetails(@PathVariable int id, Model model) {

		// 從資料庫中獲取相關的遊戲信息

		Item items = itemRepository.findById(id).orElse(null);
		List<ItemCategory> itemCategories = itemCategoryRepository.findAll();
		if (items == null) {
			// 處理遊戲不存在的情況，例如返回一個404頁面
			return "errorPage";
		}
		// 獲取評論列表
		List<Review> reviews = items.getReviews(); // 假設 Items 類已經和 Review 類建立了對應的關係
		// 獲取其他相關的信息，例如影片和圖片
		// 為每一條評論添加用戶名和頭像
		

		// 將所有獲取到的數據添加到 model 對象中
		model.addAttribute("newReview", new Review());
		model.addAttribute("itemCategories", itemCategories);
		model.addAttribute("items", items);
		model.addAttribute("review", reviews);

		// model.addAttribute("videos", videos); // 假設您已經取得了影片列表
		// model.addAttribute("images", images); // 假設您已經取得了圖片列表

		return "Item"; // 返回遊戲詳情的視圖名稱
	}

	@PostMapping("/Item/{id}")
	public String handleFormSubmission(@PathVariable int id, Review newReview, HttpSession session) {
		newReview.setId(null);
		// 獲取用戶名
		User myUser = (User) session.getAttribute("myUser");
		
		// 基本的數據驗證
		if (newReview.getRating() < 0 || newReview.getRating() > 5) {
			// 不合法的評分
			return "errorPage";
		}

		// 設置與 Items 的關聯
		Item items = itemRepository.findById(id).orElse(null);
		if (items != null) {
			newReview.setItemsId(items);

		} else {
			// Items 不存在-+
			return "errorPage";
		}
		if (myUser != null) {
			// 使用myUser的ID
			newReview.setUserId(myUser);
			System.out.println("Debug: myUser after setting = " + myUser);
		}

		// 保存 Review 對象
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		newReview.setCreationTime(ts);
//		System.out.println("Review ID before save: " + newReview.getId());  // 應該是 null 或未設置
		reviewRepository.save(newReview);
//		System.out.println("Review ID after save: " + newReview.getId());  // 應該是一個新的、自動生成的ID

		// 重定向到遊戲詳情頁
		return "redirect:/Item/" + id;
	}
	@PostMapping("/search")
	public ResponseEntity<Map<String, Object>> search(@RequestBody Map<String, String> payload) {
	    String query = payload.get("query"); // 從前端獲取搜尋詞
	    Map<String, Object> response = new HashMap<>();
	    
	    // 在這裡添加您的業務邏輯
	    Optional<Item> optionalItem = itemRepository.findByitemName(query);  // 假設findByName是您在ItemsRepository中定義的方法

	    if (optionalItem.isPresent()) {
	        // 找到商品，進行相應的操作（例如：返回商品的ID、名稱等）
	        Item foundItem = optionalItem.get();
	        response.put("success", true);
	        response.put("itemId", foundItem.getId());
	        return new ResponseEntity<>(response, HttpStatus.OK);
	    } else {
	        // 未找到商品，設置success為false
	        response.put("success", false);
	        return new ResponseEntity<>(response, HttpStatus.NOT_FOUND);
	    }
	    

	}
}



