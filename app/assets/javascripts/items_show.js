// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/
$(function(){
  $("img.ChangePhoto").click(function(){
  var ImgSrc = $(this).attr("src");
  var ImgAlt = $(this).attr("alt");
  $("img#MainPhoto").attr({src:ImgSrc,alt:ImgAlt});
  $("img#MainPhoto").hide();
  $("img#MainPhoto").fadeIn("slow");
  return false;
  });
});
  