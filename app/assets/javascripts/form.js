var formTitleField = document.querySelector("input[name='website[title]']");
var formDescriptionField = document.querySelector("textarea[name='website[description]']");


formTitleField.addEventListener('keyup', function() {
  var previewTitleField = document.querySelector('.template-container h1');
  if  (previewTitleField !== null) {
    previewTitleField.innerText = formTitleField.value;
  }
});

formDescriptionField.addEventListener('keyup', function() {
  var previewDescriptionField = document.querySelector('.template-container p');
  if (previewDescriptionField !== null) {
    previewDescriptionField.innerText = formDescriptionField.value;
  }
});
