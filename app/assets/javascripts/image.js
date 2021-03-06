$(function(){
  $('#myfile').change(function(e){
    //ファイルオブジェクトを取得する
    let file = e.target.files[0];
    let reader = new FileReader();
    //画像でない場合は処理終了
    if(file.type.indexOf("image") < 0){
      alert("画像ファイルを指定してください。");
      return false;
    }
    //#img1を選択した画像に置き換える
    reader.onload = (function(file){
      return function(e){
        $("#img1").attr("src", e.target.result);
        $("#chenge-none").attr('id', 'chenge-btn');
      };
    })(file);
    reader.readAsDataURL(file);
  });
});