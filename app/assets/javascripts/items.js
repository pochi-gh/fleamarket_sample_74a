$(window).on('load', ()=> {
  // 画像用のinputを生成する関数
  const buildFileField = (num)=> {
    const html = `<div data-index="${num}" class="js-file_group">
                    <input class="js-file" type="file"
                    name="item[images_attributes][${num}][src]"
                    id="item_images_attributes_${num}_src"><br>
                  </div>`;
    return html;
  }

// プレビュー用のimgタグの生成
const buildImg = (index, url)=> {
  const html = `<div class="prev-img-data" data-index="${index}"><img data-index="${index}" src="${url}" width="100px" height="100px" class="label-image_${index}">
    <label class="js-edit" id="js-edit_${index}" for="item_images_attributes_${index}_src">編集</label>
    <div class="js-remove">削除</div>
    </div>
  `;
  return html;
}

let fileIndex = [1,2,3,4,5,6,7,8,9,10];

lastIndex = $('.js-file_group:last').data('index');
fileIndex.splice(0, lastIndex);

$('.hidden-content').on('change', '.js-file', function(e) {
  

  const targetIndex = $(this).parent().data('index');
  // ファイルのブラウザ上でのURLを取得する
  const file = e.target.files[0];
  const blobUrl = window.URL.createObjectURL(file);

  // 該当indexを持つimgがあれば取得して変数imgに入れる(画像変更の処理)
  if (img = $(`img[data-index="${targetIndex}"]`)[0]) {
    img.setAttribute('src', blobUrl);
  } else {  // 新規画像追加の処理
    if (targetIndex <4){
      var img = $('.prev-img-data').length;
      $('.prev-img-data-upper').append(buildImg(targetIndex, blobUrl));
      // fileIndexの先頭の数字を使ってinputを作る

      $('.hidden-content').append(buildFileField(img + 1 ));
      fileIndex.shift();
      // 末尾の数に1足した数を追加する
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
      // ファイル選択エリアのクラス名を変更

      $('.label-box').attr({for: `item_images_attributes_${targetIndex +1}_src`});
      $(`.label-upper-content-${targetIndex}`).attr('class', `label-upper-content-${targetIndex + 1}`)
    }else if(targetIndex ==4){
      var img = $('.prev-img-data').length;
      $('.prev-img-data-upper').append(buildImg(targetIndex, blobUrl));
      // fileIndexの先頭の数字を使ってinputを作る
      $('.hidden-content').append(buildFileField(img + 1 ));
      fileIndex.shift();
      // 末尾の数に1足した数を追加する
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
      // ファイル選択エリアのクラス名を変更
      $('.label-box').attr({for: `item_images_attributes_${targetIndex +1}_src`});

      $(`.label-upper-content-${targetIndex}`).attr('class', `label-upper-content-${targetIndex + 1}`)
      $(`.label-lower-content-${targetIndex}`).attr('class', `label-lower-content-${targetIndex + 1}`)
    }else{
      var img = $('.prev-img-data').length;
      $('.prev-img-data-lower').append(buildImg(targetIndex, blobUrl));
      // fileIndexの先頭の数字を使ってinputを作る
      $('.hidden-content').append(buildFileField(img + 1 ));
      fileIndex.shift();
      // 末尾の数に1足した数を追加する
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
    // ファイル選択エリアのクラス名を変更
    $('.label-box').attr({for: `item_images_attributes_${targetIndex +1}_src`});
    $(`.label-lower-content-${targetIndex}`).attr('class', `label-lower-content-${targetIndex + 1}`)
    }
  }
});

$('.preview-box').on('click', '.js-remove', function() {
  const targetIndex = $(this).parent().data('index');
  // 該当indexを振られているチェックボックスを取得する
  const hiddenCheck = $(`input[data-index="${targetIndex}"].hidden-destroy`);
  // もしチェックボックスが存在すればチェックを入れる
  if (hiddenCheck) hiddenCheck.prop('checked', true);

  var count = $('.prev-img-data').length;

  $(this).parent().remove();
  
  $(`img[data-index="${targetIndex}"]`).remove();


  if (count<5){

    $(`.label-upper-content-${count}`).attr('class', `label-upper-content-${count - 1}`)
    $("#label-box--0").attr('for', `item_images_attributes_${count - 1}_src`)
    $(`.js-file_group[data-index="${targetIndex}"]`).remove();
    $(`#item_images_attributes_${targetIndex}_id`).remove();


   
  }else if(count ==5){
    $(`.label-upper-content-${count}`).attr('class', `label-upper-content-${count - 1}`)
    $("#label-box--0").attr('for', `item_images_attributes_${count - 1}_src`)
    $(`.label-lower-content-${count}`).attr('class', `label-lower-content-${count - 1}`)
    $(`.js-file_group[data-index="${targetIndex}"]`).remove();
    $(`#item_images_attributes_${targetIndex}_id`).remove();

  }else if(targetIndex<5){

    const src = $(".label-image_5").attr("src");
    $(`.prev-img-data[data-index=5]`).remove();
    $('.prev-img-data-upper').append(buildImg(5, src));
    $("#label-box--1").attr('for', `item_images_attributes_${count - 1}_src`)
    
    
    $(`.label-lower-content-${count}`).attr('class', `label-lower-content-${count- 1 }`)


  }else{
    $(`.label-lower-content-${count}`).attr('class', `label-lower-content-${count - 1}`)
    $("#label-box--1").attr('for', `item_images_attributes_${count - 1}_src`)
    $(`.js-file_group[data-index="${targetIndex}"]`).remove();
    $(`#item_images_attributes_${targetIndex}_id`).remove();
  }

    $(`.prev-img-data[data-index="${targetIndex+1}"]`).attr('data-index', `${targetIndex}`)
    $(`.label-image_${targetIndex+1}`).attr('data-index', `${targetIndex}`)
    $(`.label-image_${targetIndex+1}`).attr('class', `label-image_${targetIndex}`)
    $(`#js-edit_${targetIndex+1}`).attr({id:`#js-edit_${targetIndex}`, for:`item_images_attributes_${targetIndex}_src`})
    $(`.js-file_group[data-index=${targetIndex+1}]`).attr('data-index', `${targetIndex}`)
    $(`#item_images_attributes_${targetIndex+1}_src`).attr({id:`item_images_attributes_${targetIndex}_src`, name:`item[images_attributes][${targetIndex}][src]`})
 
    $(`.prev-img-data[data-index="${targetIndex+2}"]`).attr('data-index', `${targetIndex+1}`)
    $(`.label-image_${targetIndex+2}`).attr('data-index', `${targetIndex+1}`)
    $(`.label-image_${targetIndex+2}`).attr('class', `label-image_${targetIndex+1}`)
    $(`#js-edit_${targetIndex+2}`).attr({id:`#js-edit_${targetIndex+1}`, for:`item_images_attributes_${targetIndex+1}_src`})
    $(`.js-file_group[data-index="${targetIndex+2}"]`).attr('data-index', `${targetIndex+1}`)
    $(`#item_images_attributes_${targetIndex+2}_src`).attr({id:`item_images_attributes_${targetIndex+1}_src`, name:`item[images_attributes][${targetIndex+1}][src]`})

    $(`.prev-img-data[data-index="${targetIndex+3}"]`).attr('data-index', `${targetIndex+2}`)
    $(`.label-image_${targetIndex+3}`).attr('data-index', `${targetIndex+2}`)
    $(`.label-image_${targetIndex+3}`).attr('class', `label-image_${targetIndex+2}`)
    $(`#js-edit_${targetIndex+3}`).attr({id:`#js-edit_${targetIndex+2}`, for:`item_images_attributes_${targetIndex+2}_src`})
    $(`.js-file_group[data-index="${targetIndex+3}"]`).attr('data-index', `${targetIndex+2}`)
    $(`#item_images_attributes_${targetIndex+3}_src`).attr({id:`item_images_attributes_${targetIndex+2}_src`, name:`item[images_attributes][${targetIndex+2}][src]`})
 

    $(`.prev-img-data[data-index="${targetIndex+4}"]`).attr('data-index', `${targetIndex+3}`)
    $(`.label-image_${targetIndex+4}`).attr('data-index', `${targetIndex+3}`)
    $(`.label-image_${targetIndex+4}`).attr('class', `label-image_${targetIndex+3}`)
    $(`#js-edit_${targetIndex+4}`).attr({id:`#js-edit_${targetIndex+3}`, for:`item_images_attributes_${targetIndex+3}_src`})
    $(`.js-file_group[data-index="${targetIndex+4}"]`).attr('data-index', `${targetIndex+3}`)
    $(`#item_images_attributes_${targetIndex+4}_src`).attr({id:`item_images_attributes_${targetIndex+3}_src`, name:`item[images_attributes][${targetIndex+3}][src]`})
 
    $(`.prev-img-data[data-index="${targetIndex+5}"]`).attr('data-index', `${targetIndex+4}`)
    $(`.label-image_${targetIndex+5}`).attr('data-index', `${targetIndex+4}`)
    $(`.label-image_${targetIndex+5}`).attr('class', `label-image_${targetIndex+4}`)
    $(`#js-edit_${targetIndex+5}`).attr({id:`#js-edit_${targetIndex+4}`, for:`item_images_attributes_${targetIndex+4}_src`})
    $(`.js-file_group[data-index="${targetIndex+5}"]`).attr('data-index', `${targetIndex+4}`)
    $(`#item_images_attributes_${targetIndex+5}_src`).attr({id:`item_images_attributes_${targetIndex+4}_src`, name:`item[images_attributes][${targetIndex+4}][src]`})

    $(`.prev-img-data[data-index="${targetIndex+6}"]`).attr('data-index', `${targetIndex+5}`)
    $(`.label-image_${targetIndex+6}`).attr('data-index', `${targetIndex+5}`)
    $(`.label-image_${targetIndex+6}`).attr('class', `label-image_${targetIndex+5}`)
    $(`#js-edit_${targetIndex+6}`).attr({id:`#js-edit_${targetIndex+5}`, for:`item_images_attributes_${targetIndex+5}_src`})
    $(`.js-file_group[data-index="${targetIndex+6}"]`).attr('data-index', `${targetIndex+5}`)
    $(`#item_images_attributes_${targetIndex+6}_src`).attr({id:`item_images_attributes_${targetIndex+5}_src`, name:`item[images_attributes][${targetIndex+5}][src]`})

    $(`.prev-img-data[data-index="${targetIndex+7}"]`).attr('data-index', `${targetIndex+6}`)
    $(`.label-image_${targetIndex+7}`).attr('data-index', `${targetIndex+6}`)
    $(`.label-image_${targetIndex+7}`).attr('class', `label-image_${targetIndex+6}`)
    $(`#js-edit_${targetIndex+7}`).attr({id:`#js-edit_${targetIndex+6}`, for:`item_images_attributes_${targetIndex+6}_src`})
    $(`.js-file_group[data-index="${targetIndex+7}"]`).attr('data-index', `${targetIndex+6}`)
    $(`#item_images_attributes_${targetIndex+7}_src`).attr({id:`item_images_attributes_${targetIndex+6}_src`, name:`item[images_attributes][${targetIndex+6}][src]`})


    $(`.prev-img-data[data-index="${targetIndex+8}"]`).attr('data-index', `${targetIndex+7}`)
    $(`.label-image_${targetIndex+8}`).attr('data-index', `${targetIndex+7}`)
    $(`.label-image_${targetIndex+8}`).attr('class', `label-image_${targetIndex+7}`)
    $(`#js-edit_${targetIndex+8}`).attr({id:`#js-edit_${targetIndex+7}`, for:`item_images_attributes_${targetIndex+7}_src`})
    $(`.js-file_group[data-index="${targetIndex+8}"]`).attr('data-index', `${targetIndex+7}`)
    $(`#item_images_attributes_${targetIndex+8}_src`).attr({id:`item_images_attributes_${targetIndex+7}_src`, name:`item[images_attributes][${targetIndex+7}][src]`})

  // 画像入力欄が0個にならないようにしておく
  if ($('.js-file').length == 0) $('.preview-box').append(buildFileField(fileIndex[0]));
});

})