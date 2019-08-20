var checkbox = document.getElementById("checkbox");
var hour = document.getElementById("hour");
var minute = document.getElementById("minute");
var select_option;
var alarm_set = false;
var alarm_set2 = false;
var alarm_hour = 0;
var alarm_minute = 0;
var alarm_dialog = document.getElementById("alarm_dialog");
var sound = document.getElementById("sound");
var time = new Date;
select_option = "";
for (var i=0; i<=23; i++) {
    if (i == time.getHours()) {
        select_option += "<option value='"+i+"' selected>"+i+"</option>";
    } else {
        select_option += "<option value='"+i+"'>"+i+"</option>";
    }
}
hour.innerHTML = select_option;
select_option = "";
for (var i=0; i<=59; i++) {
    if (i == time.getMinutes()) {
        select_option += "<option value='"+i+"' selected>"+i+"</option>";
    } else {
        select_option += "<option value='"+i+"'>"+i+"</option>";
    }
}
minute.innerHTML = select_option;
function setting_save() {
    alarm_set = checkbox;
    alarm_set2 = checkbox;
    alarm_hour = Number(hour.value);
    alarm_minute = Number(minute.value);
    
    if (alarm_set) {
        sound.load();
    }
    
    alert("学習スタート！");
}
function alarm_stop() {
    alarm_dialog.style.display = "none";
    sound.pause();
    sound.currentTime = 0;
}
sound.onended = function() {
    alarm_stop();
};
function main() {
    var time = new Date;
    if (alarm_set && alarm_hour == time.getHours() && alarm_minute == time.getMinutes()) {
        sound.play();
        alarm_set = false;
        alarm_dialog.style.display = "block";
    } else if (alarm_set2 && alarm_minute != time.getMinutes()) {
        alarm_set = true;
    }
    setTimeout(main, 1000-time.getMilliseconds());
}
main();

$(function() {
  // 「Open」ボタンをクリック時に、fadeInメソッドでHTML要素を表示する
  $('#open').on('click', function() {
    $('#overlay, #modalWindow').fadeIn();
  });
  
  // 「Close」ボタンをクリック時に、fadeOutメソッドでHTML要素を非表示にする
  $('#close').on('click', function() {
    $('#overlay, #modalWindow').fadeOut();
  });
  
  locateCenter();  // => モーダルウィンドウを中央配置するための初期値を設定する
  $(window).resize(locateCenter);  // => ウィンドウのリサイズに合わせて、モーダルウィンドウの配置を変える

// モーダルウィンドウを中央配置するための配置場所を計算する関数
  function locateCenter() {
    let w = $(window).width();
    let h = $(window).height();
    
    let cw = $('#modalWindow').outerWidth();
    let ch = $('#modalWindow').outerHeight();
   
    $('#modalWindow').css({
      'left': ((w - cw) / 2) + 'px',
      'top': ((h - ch) / 2) + 'px'
    });
  }
});
