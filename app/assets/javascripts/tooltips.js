$(document).ready(function() {
    $('.tooltip-welcome').addClass('tooltip-welcome-open')
});

var tooltipWelcome = document.querySelector(".tooltip-welcome");
var crossCloseWelcome = tooltipWelcome.querySelector(".cross-icon");
crossCloseWelcome.addEventListener("click", function(){
  tooltipWelcome.style.display = 'none';
  $('.tooltip-navigate').addClass('tooltip-navigate-open')
});

// $(document).ready(function() {

// });

var tooltipNavigate = document.querySelector(".tooltip-navigate");
var crossCloseNavigate = tooltipNavigate.querySelector(".cross-icon");
crossCloseNavigate.addEventListener("click", function(){
  tooltipNavigate.style.display = 'none';
});
