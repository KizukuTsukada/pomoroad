$(function() {
  function buildHTML(post){
    if (post.content.length >= 100){
    let html = `<div class="post" data-id=${post.id}>
                  <div class="upper-post"
                    <div class="upper-post__date">
                      ${post.created_at}
                    </div>
                    <div class="lower-post__content">
                      ${post.content}
                    <a class="read-more" data-method="get" href="/groups/${post.group_id}/posts/${post.id}">続きを読む</a>                
                    </div>
                  </div>
                </div>`
    return html
    } else {
    let html = `<div class="post" data-id=${post.id}>
                  <div class="upper-post"
                    <div class="upper-post__date">
                      ${post.created_at}
                    </div>
                    <div class="lower-post__content">
                      ${post.content}                
                    </div>
                  </div>
                </div>`
    return html
    }
  }

  $('#new-post').on('submit', function(e) {
    e.preventDefault();
    let formData = new FormData(this);
    let url = $(this).attr('action')
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(post){
      let html = buildHTML(post);
      $('.form__submit').attr('disabled', false);
      $('.posts').prepend(html);
      $('#new-post')[0].reset();
    })
    .fail(function(){
      alert('投稿に失敗しました');
    })
  })
});