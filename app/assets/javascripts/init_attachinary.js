$(document).ready(function() {
  $('.attachinary-input').attachinary();
});

// Live-update the images when upload succeeds
$('.website_profile_image #website_profile_image').bind('fileuploaddone', function (e, data) {
  var profileImageUrl = data.result.secure_url;
  var currentProfileImage = $('.template-container .template-photo');
  currentProfileImage.attr('src', profileImageUrl);
});

$('.website_background_image #website_background_image').bind('fileuploaddone', function (e, data) {
  var backgroundImageUrl = data.result.secure_url;
  var currentBackgroundContainer = $('.template-container');
  currentBackgroundContainer.attr('style', "background-image: linear-gradient(rgba(0,0,0,0.3), rgba(0,0,0,0.4)), url('" + data.result.secure_url + "');");
});
