$(function() {
  Payjp.setPublicKey('pk_test_d9d5358cfdfab733fb8af0ef');
  $("#token_submit").on('click', function(e) {
    e.preventDefault();

    let card = {
      number: $('#card-number').val(),
      cvc: $('#card-cvc').val(),
      exp_month: $('#card-month').val(),
      exp_year: $('#card-year').val()
    };

    Payjp.createToken(card, function(status, response) {
      if (status === 200) {
        $('#card-form').append(
          $('<input type="hidden" name="payjp-token">').val(response.id)
        );
        $('#card-form').submit();
      } else {
        alert("カード情報が正しくありません");
      }
    });
  });
});