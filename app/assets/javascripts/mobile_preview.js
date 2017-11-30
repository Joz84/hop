var mobileButton = document.querySelector('.mobile-button');
var websiteContainer = document.querySelector('.builder-website');
var mobileLayout = document.querySelector('.mobile-elements');

mobileButton.addEventListener('click', function(e) {
  e.preventDefault;

  websiteContainer.classList.toggle('mobile-active');

  if (mobileLayout.style.display === "block") {
      mobileLayout.style.display = "none";
  } else {
      mobileLayout.style.display = "block";
  }
});
