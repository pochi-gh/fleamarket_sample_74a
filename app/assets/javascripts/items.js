// プレビュー用のimgタグの生成
const buildImg = (index, url)=> {
  const html = `<img data-index="${index}" src="${url}" width="100px" height="100px">
  <div class="js-remove">削除</div></div>
  `;
  return html;
}


let fileIndex = [1,2,3,4,5,6,7,8,9,10];

lastIndex = $('.js-file_group:last').data('index');
fileIndex.splice(0, lastIndex);