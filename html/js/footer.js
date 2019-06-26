$(function(){
    $.ajax({
        url:"footer.html",
        type:"get",
        success:function(html){
            $(html).replaceAll(".footer_main");
            $(`<link rel="stylesheet" href="css/footer.css">`).appendTo("head");
        }
    });
})