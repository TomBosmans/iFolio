var lightboxOptions = function() {
  lightbox.option({
    'disableScrolling': true,
    'alwaysShowNavOnTouchDevices': true
  })
}

$(document).on('turbolinks:load', lightboxOptions);