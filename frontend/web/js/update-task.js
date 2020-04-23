$('#update').on('click', function (e) {
    e.preventDefault();

    let data = $('#w0').serializeArray();

    $.post('/tasks/task/update/?id=' + $(this).attr('data-id'), data, function (json) {
        if (json.status) {
            $('#w0').append(`<a href="/tasks/task/index" class="btn btn-primary" style="margin-left: 15px">${json.message}</a>`);
        }
    }, "JSON");
});