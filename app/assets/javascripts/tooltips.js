let tooltip = document.querySelector(".tooltip-welcome");
let crossClose = tooltip.querySelector(".cross-icon");
crossClose.addEventListener("click", function(){
  tooltip.classList.add("toolhide");
});
