// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require twitter/bootstrap/bootstrap-modal
//= require masonry/jquery.masonry
//= require_tree .

var Dublabs = Dublabs || {};

Dublabs.init = Dublabs.init || {};
Dublabs.lightbox = Dublabs.lightbox || {};
Dublabs.masonry = Dublabs.masonry || {};
Dublabs.loaders = Dublabs.loaders || {};

Dublabs.lightbox = function(){
  $('.modal').on('show', function () {
    $('.modal-body',this).css({width:'auto',height:'auto', 'max-height':'100%', 'max-width':'100%'});
  });
}

Dublabs.masonry = function(){
  $container = $('.feed');

  $container.imagesLoaded( function (){
    $container.masonry({
      itemSelector: '.item',
      columnWidth: 250,
      gutterWidth: 40,
      isFitWidth: true
    });
  });
}

Dublabs.loaders = function(){
  $container = $('.feed');
  $overlay = $("#overlay");
  $loader = $("#loading");
  $triggers = $("a.brand, input[type='submit'], .pagination li a");

  $container.imagesLoaded(function(){
    $overlay.hide();
    $loader.hide();
  });

  $triggers.click(function(){
    $overlay.show();
    $loader.show();
  });
}

Dublabs.init = function(){
  Dublabs.lightbox();
  Dublabs.masonry();
  Dublabs.loaders();
}

$(function(){ Dublabs.init() });