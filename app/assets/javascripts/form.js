var formTitleField = document.querySelector("input[name='website[title]']");
var formDescriptionField = document.querySelector("textarea[name='website[description]']");

var website_banner_title = document.querySelector('input[name="website[banner_title]"]')


var website_banner_content = document.querySelector('textarea[name="website[banner_punchline]"]')



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

website_banner_title.addEventListener('keyup', function() {
  var previewwebsite_banner_title = document.querySelector('.website-banner-content h1');
  if (previewwebsite_banner_title !== null) {
    previewwebsite_banner_title.innerText = website_banner_title.value;
  }
});


website_banner_content.addEventListener('keyup', function() {
  var previewwebsite_banner_content = document.querySelector('.website-banner-content p');
  if (previewwebsite_banner_content !== null) {
    previewwebsite_banner_content.innerText = website_banner_content.value;
  }
});
