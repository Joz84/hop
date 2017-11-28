$(document).ready(function() {
  $('.attachinary-input').attachinary();
});

$('.website_profile_image #website_profile_image').bind('fileuploaddone', function (e, data) {
  // Live-update the profile image when upload succeeds
  var profileImageUrl = data.result.secure_url;
  var currentProfileImage = $('.template-container .template-photo');
  currentProfileImage.attr('src', profileImageUrl);

  // Hide attachinary default preview
  $('.attachinary_container').each(function(container) {
    container.hide();
  });
});

$('.website_background_image #website_background_image').bind('fileuploaddone', function (e, data) {
  // Live-update the container background image when upload succeeds
  var backgroundImageUrl = data.result.secure_url;
  var currentBackgroundContainer = $('.template-container');
  currentBackgroundContainer.attr('style', "background-image: url('" + data.result.secure_url + "');");

  // Hide attachinary default preview
  $('.attachinary_container').each(function(container) {
    container.hide();
  });
});
