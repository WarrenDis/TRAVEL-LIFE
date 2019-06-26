$(function(){
    $.ajax({
        url:"header.html",
        type:"get",
        success:function(html){
            $(html).replaceAll(".header_main");
            $(`<link rel="stylesheet" href="css/header.css">`).appendTo("head");
        }
    });
})