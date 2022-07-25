$('document').ready(function () {
  $('.form').on('submit', function (e) {
    e.preventDefault();
    let dataForm = $(this).serialize();
    $.ajax({
      url: '/includes/query.php',
      method: 'POST',
      dataType: 'html',
      data: {dataForm},
      success: function (data) {
        $('.messages').html('<p>Request was send</p>');
      },
    });
  });
});
