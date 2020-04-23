$('#delete').on('click',function (e) {
    e.preventDefault();

    let conf = confirm('Delete this task?');

    if(conf){
        $.get('/tasks/task/delete/?id=' + $(this).attr('data-id'),function (json) {
            if (json.status) {
                alert(json.message);
            }
        }, "JSON");
    }
});