// 販売価格が入力されたら、販売手数料と販売利益を計算してくれます
$(function(){
  $( document ).on( 'change keyup', '.form_price', function(){ 
    // 販売価格の入力欄の右のボタンを動かしたり、直接キー入力すると動きます
    let amount = $( this ).val();
    // 販売価格の入力欄に入力された値を変数「amount」に代入
    let fee = Math.ceil(amount * 0.1);
    // 販売手数料は10%としています。またMath.ceilメソッドで1円単位に切り上げています。
    let gain = Math.floor(amount * 0.9);
    // 利益は残りの金額。Math.floorメソッドで、1円単位で切り捨てておけば「販売価格 = 販売手数料 + 販売利益」が成り立ちます。
    $('.price__sales_commission--fees_mark').html(fee);
    // htmlメソッドを使って販売手数料の欄を丸ごと書き換えます。
    $('.price__sales_profit__gains__gain--mark').html(gain);
    // 同じように販売利益の欄も書き換えます。
  });
});