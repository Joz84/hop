const submitButton = document.querySelector('#website-submit');
const toolbarItems = document.querySelectorAll('.toolbar li');
const activeClass = 'toolbar-menu-item-active';

submitButton.addEventListener('click', () => {

  if (toolbarItems[0].classList.contains(activeClass)) {

    toolbarItems[0].classList.remove(activeClass);
    toolbarItems[1].classList.add(activeClass);

  } else if (toolbarItems[1].classList.contains(activeClass)) {

    toolbarItems[1].classList.remove(activeClass);
    toolbarItems[2].classList.add(activeClass);

  }
});
