$(function(){
  $("#item_explain").on('change keyup',function(){

    let txtcount = $(this).val().length;
    console.log(txtcount)
    $(".items--count").text(txtcount);
  });
});