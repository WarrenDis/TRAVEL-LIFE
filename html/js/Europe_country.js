$(function(){
    $.ajax({
        url:"http://127.0.0.1:8080/sel_glo/sel_global",
        type:"get",
        data:{glo:"欧洲"},
        dataType:"json",
        success:function(result){
            var country_name=result.data[0].country_name;
            var obj=country_name.split(" ");
            var html='';
            for(var i of obj){
                html+=`<li><a href="">${i}</a></li>`
            }
            $('.country_name').html(html)
        }
    })
})
