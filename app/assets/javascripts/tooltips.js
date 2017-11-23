
// document.addEventListener("DOMContentLoaded", function() {
//   const captooltip = document.getElementsByClassName("tooltip-welcome");
//   });


let tooltip = document.querySelector(".tooltip-welcome");
let crossclose = tooltip.querySelector(".switch-icone");
crossclose.addEventListener("click", function(){
  tooltip.classList.add("toolhide");
});
