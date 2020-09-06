$(function(){
  $("#item_explain").on('change keyup',function(){

    let txtcount = $(this).val().length;
    
    $(".items--count").text(txtcount);
  });
});