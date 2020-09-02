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
  const html = `<div class="prev-img-data" data-index="${index}"><img data-index="${index}" src="${url}" width="100px" height="100px">
    <div class="js-area">
    <label class="js-edit" for="item_images_attributes_${index}_src">編集</label>
    <div class="js-remove">削除</div>
    </div></div></div>
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
      $('.prev-img-data-upper').append(buildImg(targetIndex, blobUrl));
      // fileIndexの先頭の数字を使ってinputを作る
      $('.hidden-content').append(buildFileField(fileIndex[0]));
      fileIndex.shift();
      // 末尾の数に1足した数を追加する
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
      // ファイル選択エリアのクラス名を変更
      console.log(targetIndex)


      $('.label-box').attr({for: `item_images_attributes_${targetIndex +1}_src`});
      $(`.label-upper-content-${targetIndex}`).attr('class', `label-upper-content-${targetIndex + 1}`)
    }else if(targetIndex ==4){
      $('.prev-img-data-upper').append(buildImg(targetIndex, blobUrl));
      // fileIndexの先頭の数字を使ってinputを作る
      $('.hidden-content').append(buildFileField(fileIndex[0]));
      fileIndex.shift();
      // 末尾の数に1足した数を追加する
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
      // ファイル選択エリアのクラス名を変更
      console.log(targetIndex)
      $('.label-box').attr({for: `item_images_attributes_${targetIndex +1}_src`});
      $(`.label-upper-content-${targetIndex}`).attr('class', `label-upper-content-${targetIndex + 1}`)
      $(`.label-lower-content-${targetIndex}`).attr('class', `label-lower-content-${targetIndex + 1}`)
    }else{
      $('.prev-img-data-lower').append(buildImg(targetIndex, blobUrl));
      // fileIndexの先頭の数字を使ってinputを作る
      $('.hidden-content').append(buildFileField(fileIndex[0]));
      fileIndex.shift();
      // 末尾の数に1足した数を追加する
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
    // ファイル選択エリアのクラス名を変更
    $('.label-box').attr({for: `item_images_attributes_${targetIndex +1}_src`});
    $(`.label-lower-content-${targetIndex}`).attr('class', `label-lower-content-${targetIndex + 1}`)
    }
  }
});

$('#image-box').on('click', '.js-remove', function() {
  const targetIndex = $(this).parent().data('index');
  // 該当indexを振られているチェックボックスを取得する
  const hiddenCheck = $(`input[data-index="${targetIndex}"].hidden-destroy`);
  // もしチェックボックスが存在すればチェックを入れる
  if (hiddenCheck) hiddenCheck.prop('checked', true);

  $(this).parent().remove();
  $(`img[data-index="${targetIndex}"]`).remove();

  // 画像入力欄が0個にならないようにしておく
  if ($('.js-file').length == 0) $('#image-box').append(buildFileField(fileIndex[0]));
});

})