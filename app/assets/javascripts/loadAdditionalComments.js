$( document ).ready(function() {
  $('body').on('click', '.more-comments', function() {
    $(this).on('ajax:success', function(event, data, status, xhr) {
      $("#comments_" + postId).html(data);
    });
  });
});