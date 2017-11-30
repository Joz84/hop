var mobileButton = document.querySelector('.mobile-button');
var websiteContainer = document.querySelector('.builder-website');
var mobileLayout = document.querySelector('.mobile-elements');
var tooltips = document.querySelectorAll('.tooltip-container');

mobileButton.addEventListener('click', function(e) {
  e.preventDefault;

  tooltips.forEach(function(tooltip) {
    tooltip.style.display = 'none';
  })

  websiteContainer.classList.toggle('mobile-active');
  mobileButton.classList.toggle('mobile-active');

  if (mobileLayout.style.display === "block") {
      mobileLayout.style.display = "none";
  } else {
      mobileLayout.style.display = "block";
  }
});
