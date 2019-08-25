$(function(){
  $("#input-text").on("keyup", function(){
    var charNum = String($(this).val().length);
    $("#char-count").text(charNum + "文字");
  });
})