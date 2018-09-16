var submitButton = document.querySelector('#website-submit');
var toolbarItems = document.querySelectorAll('.toolbar li');
var activeClass = 'toolbar-menu-item-active';
var urlBox = document.getElementById('website_url');

var styleInputs = document.querySelector('#style-inputs');
var editInputs = document.querySelector('#edit-inputs');
var publishInputs = document.querySelector('#publish-inputs');

styleInputs.style.display = 'block';
editInputs.style.display = 'none';
publishInputs.style.display = 'none';


// Change active item and show
// appropriate inputs on submit
submitButton.addEventListener('click', function() {

  if (toolbarItems[0].classList.contains(activeClass)) {

    toolbarItems[0].classList.remove(activeClass);
    toolbarItems[1].classList.add(activeClass);

    styleInputs.style.display = 'none';
    editInputs.style.display = 'block';
    publishInputs.style.display = 'none';

    submitButton.value = 'Enregistrer le contenu';

  } else if (toolbarItems[1].classList.contains(activeClass)) {

    toolbarItems[1].classList.remove(activeClass);
    toolbarItems[2].classList.add(activeClass);

    styleInputs.style.display = 'none';
    editInputs.style.display = 'none';
    publishInputs.style.display = 'block';

    urlBox.trigger('change');

    submitButton.value = 'Enregistrer';

  }
});

// Apply 'Style' layout
toolbarItems[0].addEventListener('click', function() {

  toolbarItems[0].classList.add(activeClass);
  toolbarItems[1].classList.remove(activeClass);
  toolbarItems[2].classList.remove(activeClass);

  styleInputs.style.display = 'block';
  editInputs.style.display = 'none';
  publishInputs.style.display = 'none';

  submitButton.value = 'Séléctionner le thème';

});

// Apply 'Edit' layout
toolbarItems[1].addEventListener('click', function() {

  toolbarItems[0].classList.remove(activeClass);
  toolbarItems[1].classList.add(activeClass);
  toolbarItems[2].classList.remove(activeClass);

  styleInputs.style.display = 'none';
  editInputs.style.display = 'block';
  publishInputs.style.display = 'none';

  submitButton.value = 'Enregistrer le contenu';
});

// Apply 'Publish' layout
toolbarItems[2].addEventListener('click', function() {

  toolbarItems[0].classList.remove(activeClass);
  toolbarItems[1].classList.remove(activeClass);
  toolbarItems[2].classList.add(activeClass);

  styleInputs.style.display = 'none';
  editInputs.style.display = 'none';
  publishInputs.style.display = 'block';

  urlBox.trigger('change');

  submitButton.value = 'Enregistrer';
});
