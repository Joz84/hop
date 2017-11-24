var tooltip = document.querySelector(".tooltip-welcome");
var crossClose = tooltip.querySelector(".cross-icon");
crossClose.addEventListener("click", function(){
  tooltip.classList.add("toolhide");
});
