<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix='form' uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html><!--  This site was created in Webflow. https://www.webflow.com  -->
<!--  Last Published: Tue Sep 12 2023 23:56:51 GMT+0000 (Coordinated Universal Time)  -->
<html data-wf-page="650071e17cd3c26438526046" data-wf-site="64e5ed3359b16400aec286b0">
<head>
  <meta charset="utf-8">
  <title>View purchase history</title>
  <meta content="Free Webflow ecommerce template for your business. Enjoy colorful design, add your products, mix components and build your own online shop!" name="description">
  <meta content="View purchase history" property="og:title">
  <meta content="Free Webflow ecommerce template for your business. Enjoy colorful design, add your products, mix components and build your own online shop!" property="og:description">
  <meta content="View purchase history" property="twitter:title">
  <meta content="Free Webflow ecommerce template for your business. Enjoy colorful design, add your products, mix components and build your own online shop!" property="twitter:description">
  <meta property="og:type" content="website">
  <meta content="summary_large_image" name="twitter:card">
  <meta content="width=device-width, initial-scale=1" name="viewport">
  <meta content="Webflow" name="generator">
  
  <link href="/css/normalize.css" rel="stylesheet" type="text/css">
  <link href="/css/webflow.css" rel="stylesheet" type="text/css">
  <link href="/css/5teams-wondrous-site.webflow.css" rel="stylesheet" type="text/css">
  <link href="/css/star.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com" rel="preconnect">
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.26/webfont.js" type="text/javascript"></script>
  <script type="text/javascript">WebFont.load({  google: {    families: ["Open Sans:300,300italic,400,400italic,600,600italic,700,700italic,800,800italic","Varela Round:400","Exo:100,100italic,200,200italic,300,300italic,400,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic","Oswald:200,300,400,500,600,700","Great Vibes:400"]  }});</script>
  <script type="text/javascript">!function(o,c){var n=c.documentElement,t=" w-mod-";n.className+=t+"js",("ontouchstart"in o||o.DocumentTouch&&c instanceof DocumentTouch)&&(n.className+=t+"touch")}(window,document);</script>

  <link href="/images/favicon.png" rel="shortcut icon" type="image/x-icon">
  <link href="/images/webclip.png" rel="apple-touch-icon">
</head>
<body class="body-4">
  <div class="preloader">
    <div class="loading-icon"><img src="/images/preloader.gif" alt="" class="preloader-icon"></div>
  </div>
  <div class="f-section-large-5">
    <h5 class="heading-3">
      <a href="/" class="link-6">首頁</a>&gt;<a href="game-search-page/view-purchase-history-copy-3.html" class="link-8">遊戲類別</a>&gt;英雄聯盟
    </h5>
    <div class="f-container-regular-5">
      <div class="w-layout-grid f-header-grid">
        <div id="w-node-_33420444-5f64-04dd-5568-46544f86bc6c-38526046">
          <div class="f-margin-bottom-85">
            <h1 class="heading-26">★★★★★</h1>
          </div>
          <div class="f-margin-bottom-84">
            <h1 class="f-h1-heading">${items.itemName }</h1>
          </div>
          <div class="f-margin-bottom-83">
            <p class="f-paragraph-large-5">${items.itemDescription }
          </div>
          <div class="f-header-button-wrapper">
            <a href="#" class="f-button-neutral-6 w-inline-block">
              <div id="addToCart" name="addToCart" data-item-id="${items.id}" class="text-block-32">加入購物車</div>
              
            </a>
          </div>
        </div>
        <div id="w-node-_33420444-5f64-04dd-5568-46544f86bc7d-38526046" class="f-header-image-wrapper-tall"><img src="" loading="lazy" srcset="${items.dataUri }" sizes="(max-width: 991px) 90vw, 500.0000305175781px" alt="" class="f-image-cover-5"></div>
      </div>
    </div>
  </div>
  <section class="section-8">
    <div class="w-layout-blockcontainer container-24 w-container">
      <div class="div-block-67">
        <div data-delay="4000" data-animation="slide" class="slider-5 w-slider" data-autoplay="true" data-easing="ease" data-hide-arrows="false" data-disable-swipe="false" data-autoplay-limit="0" data-nav-spacing="4" data-duration="300" data-infinite="true">
          <div class="w-slider-mask">
            <aside class="slide-5 w-slide">
              <div class="div-block-68">
                <div class="div-block-72">
                  <div style="padding-top:56.17021276595745%" class="video-6 w-video w-embed"><iframe class="embedly-embed" src="${items.mp4 }" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen" scrolling="no" allowfullscreen="" title="Warriors | Season 2020 Cinematic - League of Legends (ft. 2WEI and Edda Hayes)"></iframe></div>
                </div>
              </div>
            </aside>
            <aside class="slide-5 w-slide">
              <div class="div-block-68">
                <div class="div-block-72"><img src="${items.dataUri1 }" loading="lazy" sizes="(max-width: 767px) 80vw, (max-width: 1919px) 60vw, 900.0000610351562px" srcset="${items.dataUri1}" alt="" class="image-45"></div>
              </div>
            </aside>
            <aside class="slide-5 w-slide">
              <div class="div-block-68">
                <div class="div-block-72"><img src="${items.dataUri2 }" loading="lazy" sizes="(max-width: 767px) 80vw, (max-width: 1919px) 60vw, 900.0000610351562px" srcset="${items.dataUri2}" alt="" class="image-45"></div>
              </div>
            </aside>
            <aside class="slide-5 w-slide">
              <div class="div-block-68">
                <div class="div-block-72"><img src="${items.dataUri }" loading="lazy" sizes="(max-width: 767px) 80vw, (max-width: 1919px) 60vw, 900.0000610351562px" srcset="${items.dataUri}" alt="" class="image-45"></div>
              </div>
            </aside>
          </div>
          <div class="left-arrow w-slider-arrow-left"></div>
          <div class="right-arrow w-slider-arrow-right"></div>
          <div class="slide-nav w-slider-nav w-slider-nav-invert w-round"></div>
        </div>
      </div>
    </div>
  </section>
  <div class="f-section-regular-2">
    <div class="f-container-regular-4">
      <div class="f-margin-bottom-82">
        <div class="f-title-wrapper-center-4">
          <h2 class="f-h3-heading-9">評論</h2>
        </div>
      </div>
      <div class="w-layout-grid f-grid-three-column">
      <c:forEach var="review" items="${review}">
        <div id="w-node-ef221b94-00dc-2e98-cd27-d9fe5e75b67b-38526046" class="f-testimonial-outline-small">
          <div class="f-testimonial-star-wrapper">
            <c:forEach var="i" begin="1" end="${review.rating}">
            
            <div class="f-icon-regular-3 w-embed"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewbox="0 0 24 24" fill="none">
                <path d="M11.999 15.8196L7.50882 18.562L8.72951 13.4439L4.73438 10.0217L9.97847 9.60156L11.999 4.74323L14.0194 9.60156L19.2643 10.0217L15.2684 13.4439L16.4891 18.562L11.999 15.8196Z" fill="currentColor"></path>
              </svg></div>
			</c:forEach>	

          </div>
          <div class="f-margin-bottom-80">
            <p class="f-paragraph-small-3">${review.reviewText}</p>
          </div>
          <h3 class="heading-33">${review.userId.username}</h3>
          <div class="f-testimonial-author">
          
          
          <c:choose>

					<c:when test="${review.userId.avatar.dataUri != null}"> 

						  <div class="f-testimonial-avatar-small"><img src="data:image/jpeg;base64,${review.userId.avatar.dataUri}" loading="lazy" alt="" class="f-avatar-image-2"></div>
					</c:when>
											   
					<c:otherwise>  
					
							<div class="f-testimonial-avatar-small"><img src="data:image/png;base64,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" loading="lazy" alt="" class="f-avatar-image-2"></div>		
					
					</c:otherwise>
											  
				</c:choose>
          </div>
        </div>
        </c:forEach>
      </div>
    </div>
  </div>
  <div data-collapse="medium" data-animation="default" data-duration="400" data-easing="ease" data-easing2="ease" role="banner" class="nav-bar-c77py w-nav">
    <div class="nav-main">
      <div class="wrapper nav-bar-wrapper">
        <a href="/" class="brand w-nav-brand">
          <div><img src="/images/LOGO.png" loading="lazy" width="214" sizes="(max-width: 479px) 55vw, 213.99307250976562px" alt="" srcset="/images/LOGO-p-500.png 500w, /images/LOGO.png 556w"></div>
        </a>
        <div class="navigation">
          <nav role="navigation" class="nav-menu w-nav-menu">
            <a href="/" class="nav-link w-nav-link">首頁</a>
            <div data-hover="false" data-delay="0" class="dropdown w-dropdown">
              <div class="dropdown-toggle w-dropdown-toggle">
                <div class="icon w-icon-dropdown-toggle"></div>
                <div>遊戲類別</div>
              </div>
				 <nav class="w-dropdown-list">
				    <c:forEach var="itemCat" items="${itemCategories}">
				        <a href="/ItemCategory?category=${itemCat.categoryName}" class="dropdown-link w-dropdown-link w--current">${itemCat.categoryName}</a>
				    </c:forEach>
				</nav>
            </div>
            <a href="topup.html" class="nav-link w-nav-link">點數商店</a>
            <a href="account-details/news-copy-2.html" class="nav-link w-nav-link">消息新聞</a>
            <div><img src="/images/螢幕擷取畫面_2023-09-02__1_-removebg-preview-removebg-preview.png" loading="lazy" width="68" sizes="(max-width: 767px) 100vw, (max-width: 991px) 43.07291793823242px, (max-width: 1439px) 5vw, 67.98611450195312px" alt="" srcset="/images/螢幕擷取畫面_2023-09-02__1_-removebg-preview-removebg-preview-p-500.png 500w, /images/螢幕擷取畫面_2023-09-02__1_-removebg-preview-removebg-preview.png 552w"></div>
            <div data-hover="false" data-delay="0" class="dropdown w-dropdown">
              <div class="dropdown-toggle w-dropdown-toggle">
                <div class="icon w-icon-dropdown-toggle"></div>
                <div>會員中心</div>
              </div>
              <nav class="w-dropdown-list">
               <a href="/findEmployee.do?id=${sessionScope.myUser.id}&userId=${sessionScope.myUser.id}"
									class="dropdown-link w-dropdown-link">個人資料</a> <a
									href="/findfriendsid?id=${sessionScope.myUser.id}"
									class="dropdown-link-2 w-dropdown-link">好友</a>  <a
									href="/findPlayergameid?id=${sessionScope.myUser.id}"
									class="dropdown-link-3 w-dropdown-link">遊戲庫</a> <a
									href="account-details/coupon.html"
									class="dropdown-link-4 w-dropdown-link">我的優惠卷</a> <a
									href="account-details/viewpurchasehistory.html"
									class="dropdown-link-5 w-dropdown-link">檢視購買記錄</a>
              </nav>
              </div>
 							<sec:authorize access="isAuthenticated()">
								<span> <sec:authentication property="name" />
								</span>
							</sec:authorize>
							<sec:authorize access="!isAuthenticated()">
								<a href="/register">註冊</a>
							</sec:authorize>
							<sec:authorize access="isAuthenticated()">
								<a href="<c:url value='/logout'/>" aria-current="page"
									class="nav-link w-nav-link">登出</a>
							</sec:authorize>
							<sec:authorize access="!isAuthenticated()">
								<a href="<c:url value='/login'/>" aria-current="page"
									class="nav-link w-nav-link w--current">登入</a>
							</sec:authorize>
						</nav>
          <div class="menu-button w-nav-button">
            <div class="icon-2 w-icon-nav-menu"></div>
          </div>
          <div data-node-type="commerce-cart-wrapper" data-open-product="" data-wf-cart-type="rightDropdown" data-wf-cart-query="" data-wf-page-link-href-prefix="" class="w-commerce-commercecartwrapper cart">
            <a href="#" data-node-type="commerce-cart-open-link" class="w-commerce-commercecartopenlink cart-button w-inline-block" role="button" aria-haspopup="dialog" aria-label="Open cart">
              <div class="w-inline-block">購物車</div><img src="/images/cart-icon.svg" alt="" class="cart-icon">
              <div style="display:none" data-count-hide-rule="empty" class="w-commerce-commercecartopenlinkcount item-count">0</div>
            </a>
            <div data-node-type="commerce-cart-container-wrapper" style="display:none" class="w-commerce-commercecartcontainerwrapper w-commerce-commercecartcontainerwrapper--cartType-rightDropdown">
              <div data-node-type="commerce-cart-container" role="dialog" class="w-commerce-commercecartcontainer cart-container">
                <div class="w-commerce-commercecartheader cart-header">
                  <h4 class="w-commerce-commercecartheading">我的購物車</h4>
                  <a href="#" data-node-type="commerce-cart-close-link" class="w-commerce-commercecartcloselink w-inline-block" role="button" aria-label="Close cart"><svg width="16px" height="16px" viewbox="0 0 16 16">
                      <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                        <g fill-rule="nonzero" fill="#333333">
                          <polygon points="6.23223305 8 0.616116524 13.6161165 2.38388348 15.3838835 8 9.76776695 13.6161165 15.3838835 15.3838835 13.6161165 9.76776695 8 15.3838835 2.38388348 13.6161165 0.616116524 8 6.23223305 2.38388348 0.616116524 0.616116524 2.38388348 6.23223305 8"></polygon>
                        </g>
                      </g>
                    </svg></a>
                </div>
                <div class="w-commerce-commercecartformwrapper">
                  <form data-node-type="commerce-cart-form" style="display:none" class="w-commerce-commercecartform">
                    <script type="text/x-wf-template" id="wf-template-9336d8a7-ba52-2880-0c69-78271ccadf80"></script>
                    <div class="w-commerce-commercecartlist cart-list" data-wf-collection="database.commerceOrder.userItems" data-wf-template-id="wf-template-9336d8a7-ba52-2880-0c69-78271ccadf80"></div>
                    <div class="w-commerce-commercecartfooter cart-footer">
                      <div aria-live="" aria-atomic="false" class="w-commerce-commercecartlineitem">
                        <div>總價</div>
                        <div class="w-commerce-commercecartordervalue">000.00元</div>
                      </div>
                      <div>
                        <div data-node-type="commerce-cart-quick-checkout-actions">
                          <a role="button" aria-haspopup="dialog" aria-label="Apple Pay" data-node-type="commerce-cart-apple-pay-button" style="background-image:-webkit-named-image(apple-pay-logo-white);background-size:100% 50%;background-position:50% 50%;background-repeat:no-repeat" class="w-commerce-commercecartapplepaybutton cart-pay-button" tabindex="0">
                            <div></div>
                          </a>
                          <a role="button" tabindex="0" aria-haspopup="dialog" data-node-type="commerce-cart-quick-checkout-button" style="display:none" class="w-commerce-commercecartquickcheckoutbutton cart-pay-button"><svg class="w-commerce-commercequickcheckoutgoogleicon" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="16" height="16" viewbox="0 0 16 16">
                              <defs>
                                <polygon id="google-mark-a" points="0 .329 3.494 .329 3.494 7.649 0 7.649"></polygon>
                                <polygon id="google-mark-c" points=".894 0 13.169 0 13.169 6.443 .894 6.443"></polygon>
                              </defs>
                              <g fill="none" fill-rule="evenodd">
                                <path fill="#4285F4" d="M10.5967,12.0469 L10.5967,14.0649 L13.1167,14.0649 C14.6047,12.6759 15.4577,10.6209 15.4577,8.1779 C15.4577,7.6339 15.4137,7.0889 15.3257,6.5559 L7.8887,6.5559 L7.8887,9.6329 L12.1507,9.6329 C11.9767,10.6119 11.4147,11.4899 10.5967,12.0469"></path>
                                <path fill="#34A853" d="M7.8887,16 C10.0137,16 11.8107,15.289 13.1147,14.067 C13.1147,14.066 13.1157,14.065 13.1167,14.064 L10.5967,12.047 C10.5877,12.053 10.5807,12.061 10.5727,12.067 C9.8607,12.556 8.9507,12.833 7.8887,12.833 C5.8577,12.833 4.1387,11.457 3.4937,9.605 L0.8747,9.605 L0.8747,11.648 C2.2197,14.319 4.9287,16 7.8887,16"></path>
                                <g transform="translate(0 4)">
                                  <mask id="google-mark-b" fill="#fff">
                                    <use xlink:href="#google-mark-a"></use>
                                  </mask>
                                  <path fill="#FBBC04" d="M3.4639,5.5337 C3.1369,4.5477 3.1359,3.4727 3.4609,2.4757 L3.4639,2.4777 C3.4679,2.4657 3.4749,2.4547 3.4789,2.4427 L3.4939,0.3287 L0.8939,0.3287 C0.8799,0.3577 0.8599,0.3827 0.8459,0.4117 C-0.2821,2.6667 -0.2821,5.3337 0.8459,7.5887 L0.8459,7.5997 C0.8549,7.6167 0.8659,7.6317 0.8749,7.6487 L3.4939,5.6057 C3.4849,5.5807 3.4729,5.5587 3.4639,5.5337" mask="url(#google-mark-b)"></path>
                                </g>
                                <mask id="google-mark-d" fill="#fff">
                                  <use xlink:href="#google-mark-c"></use>
                                </mask>
                                <path fill="#EA4335" d="M0.894,4.3291 L3.478,6.4431 C4.113,4.5611 5.843,3.1671 7.889,3.1671 C9.018,3.1451 10.102,3.5781 10.912,4.3671 L13.169,2.0781 C11.733,0.7231 9.85,-0.0219 7.889,0.0001 C4.941,0.0001 2.245,1.6791 0.894,4.3291" mask="url(#google-mark-d)"></path>
                              </g>
                            </svg><svg class="w-commerce-commercequickcheckoutmicrosofticon" xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewbox="0 0 16 16">
                              <g fill="none" fill-rule="evenodd">
                                <polygon fill="#F05022" points="7 7 1 7 1 1 7 1"></polygon>
                                <polygon fill="#7DB902" points="15 7 9 7 9 1 15 1"></polygon>
                                <polygon fill="#00A4EE" points="7 15 1 15 1 9 7 9"></polygon>
                                <polygon fill="#FFB700" points="15 15 9 15 9 9 15 9"></polygon>
                              </g>
                            </svg>
                            <div>Pay with browser.</div>
                          </a>
                        </div>
                      </div>
                    </div>
                  </form>
                  <div class="w-commerce-commercecartemptystate">
                    <div>No items found.</div>
                  </div>
                  <div aria-live="" style="display:none" data-node-type="commerce-cart-error" class="w-commerce-commercecarterrorstate form-error">
                    <div class="w-cart-error-msg" data-w-cart-quantity-error="Product is not available in this quantity." data-w-cart-general-error="Something went wrong when adding this item to the cart." data-w-cart-checkout-error="Checkout is disabled on this site." data-w-cart-cart_order_min-error="The order minimum was not met. Add more items to your cart to continue." data-w-cart-subscription_error-error="Before you purchase, please use your email invite to verify your address so we can send order updates.">Product is not available in this quantity.</div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <section>
 	<c:url  var="formUrl" value="/Item/${items.id}" /> 
    <div class="w-form">
      <form:form  modelAttribute="newReview" action="${formUrl}" id="email-form"   name="email-form" data-name="Email Form" method="post" class="form-7 form-9" data-wf-page-id="650071e17cd3c26438526046" data-wf-element-id="8cdaf3e1-8e67-7d25-6469-5ad8ad6847e1">
        <div>
        
         <h3 class="heading-24">評分:</h3>
         <div class="rating">
          <i class="rating__star far fa-star" ></i>
          <i class="rating__star far fa-star"></i>
          <i class="rating__star far fa-star"></i>
          <i class="rating__star far fa-star"></i>
          <i class="rating__star far fa-star"></i>
          <form:input type="hidden" path="rating" id="rating"  value="0"/>
  		</div>
        </div>
        <form:textarea class="textarea-3 w-input" maxlength="5000" path="reviewText" data-name="Field" placeholder="" id="field"/>
        <input type="submit" value="提交" data-wait="Please wait..." class="button-77-cofpy-copy w-button"/>
      </form:form>
      <div class="w-form-done">
        <div>Thank you! Your submission has been received!</div>
      </div>
      <div class="w-form-fail">
        <div>Oops! Something went wrong while submitting the form.</div>
      </div>
    </div>
  </section>
  <div class="section no-padding-vertical">
    <div class="wrapper side-paddings"></div>
  </div>
  <div class="section no-padding-vertical">
    <div class="wrapper side-paddings"></div>
  </div>
  <section class="footer-light-c56489py">
    <div class="container">
      <div class="footer-wrapper-two">
        <a href="#" class="footer-brand-2 w-inline-block"><img src="/images/LOGO.png" loading="lazy" width="253" sizes="(max-width: 479px) 88vw, 252.9861297607422px" alt="" srcset="/images/LOGO-p-500.png 500w, /images/LOGO.png 556w"></a>
        <div class="footer-block-two">
          <div class="footer-title">company</div>
          <a href="#" class="footer-link-two">How it works</a>
          <a href="#" class="footer-link-two">Pricing</a>
          <a href="#" class="footer-link-two">Docs</a>
        </div>
        <div class="footer-block-two">
          <div class="footer-title">Quick Link</div>
          <a href="#" class="footer-link-two">Pricing</a>
          <a href="#" class="footer-link-two">Resources</a>
        </div>
        <div class="footer-form w-form">
          <form id="wf-form-Footer-Form" name="wf-form-Footer-Form" data-name="Footer Form" method="get" class="footer-form-container" data-wf-page-id="650071e17cd3c26438526046" data-wf-element-id="59b5997e-127b-028f-3341-9500c3fdafa7">
            <div class="footer-title">Subscribe</div>
            <div class="footer-form-block"><input type="email" class="footer-form-field w-input" maxlength="256" name="Footer-Email" data-name="Footer Email" aria-label="Get product updates" placeholder="Get product updates" id="Footer-Email" required=""><input type="submit" value="" data-wait="Please wait..." class="footer-form-submit w-button"></div>
          </form>
          <div class="w-form-done">
            <div>Thank you! Your submission has been received!</div>
          </div>
          <div class="w-form-fail">
            <div>Oops! Something went wrong while submitting the form.</div>
          </div>
        </div>
      </div>
      <div class="footer-divider-two"></div>
    </div>
    <div class="footer-bottom-2">
      <div class="footer-copyright">© 2023 5team. All rights reserved </div>
      <div class="footer-copyright">
        <a href="#"><strong>聯繫我們:5team44684468@gmail.com</strong></a><strong> </strong>
      </div>
      <a href="#" class="footer-social-link-2 w-inline-block"><img src="/images/face-removebg-preview.png" loading="lazy" width="96" alt="" class="image-35"></a>
      <a href="#" class="footer-social-link-2 w-inline-block"><img src="/images/Twi-removebg-preview.png" loading="lazy" width="97" alt="" class="image-34"></a>
      <div class="footer-social-block-two">
        <a href="#" class="footer-social-link-2 w-inline-block"><img src="/images/YT-removebg-preview.png" loading="lazy" width="93" alt="" class="image-36"></a>
      </div>
    </div>
  </section>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=64e5ed3359b16400aec286b0" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="/js/webflow.js" type="text/javascript"></script>
  <script src="/js/star.js" type="text/javascript"></script>

<script>

document.getElementById('addToCart').addEventListener('click', function() {
	const csrfToken = document.getElementById('csrfToken').value;  
	const itemId = this.getAttribute('data-item-id'); // 獲取商品ID
	  console.log('Item ID:', itemId); // 這會在控制台顯示 itemId。確保這個值是正確的。
	  fetch('/api/addToCart', {
	    method: 'POST',
	    headers: {
	      'Content-Type': 'application/json',
	    	  'X-CSRF-TOKEN': csrfToken 
	    },
	    body: JSON.stringify({ itemId: itemId })
	  })
	  .then(response => response.json())
	  .then(data => {
	    if (data.success) {
	      alert('成功加入購物車!');
	    } else {
	      alert('加入購物車失敗: ' + data.message);
	    }
	  })
	  .catch((error) => {
	    console.error('Error:', error);
	    alert('加入購物車失敗');
	  });
	});
</script>
<input type="hidden" id="csrfToken" value="${_csrf.token}" />
${_csrf.token}
</body>
</html>