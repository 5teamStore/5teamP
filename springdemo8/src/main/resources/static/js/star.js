const ratingStars = [...document.getElementsByClassName("rating__star")];

function executeRating(stars) {
  const starClassActive = "rating__star fas fa-star";
  const starClassInactive = "rating__star far fa-star";
  let rating = 0; // 初始化評分為0

  stars.map((star, index) => {
    star.onclick = () => {
      if (star.className === starClassInactive) {
        for (let j = 0; j <= index; j++) {
          stars[j].className = starClassActive;
        }
        rating = index + 1; // 設置評分
      } else {
        for (let j = index; j < stars.length; j++) {
          stars[j].className = starClassInactive;
        }
        rating = index; // 設置評分
      }
      document.getElementById('rating').value = rating;
      console.log("Rating set to: " + rating);
    };
  });
}
executeRating(ratingStars);
