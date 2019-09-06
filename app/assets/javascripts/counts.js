$(function(){
  $("#input-text").on("keyup", function(){
    let charNum = String($(this).val().length);
    if(charNum <= 100){
      $("#char-count").text(charNum + "文字" + "  もっと頑張って書こう！");
    } else if(100 < charNum < 500 ) {
      $("#char-count").text(charNum + "文字" + "  いいねいいね！");
    } else {
      $("#char-count").text(charNum + "文字" + "  すごい！");
    }
  });
})