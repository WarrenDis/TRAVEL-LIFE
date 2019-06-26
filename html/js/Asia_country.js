$(function(){
    // 页面加载时执行
    $.ajax({
        url:"http://127.0.0.1:8080/sel_glo/sel_global",
        async:false,
        type:"get",
        data:{glo:"亚洲"},
        dataType:"json",
        success:function(result){
            var country_name=result.data[0].country_name;
            var obj=country_name.split(" ");
            var html='';
            for(var i of obj){
                html+=`<li><a href="javascript:;">${i}</a></li>`
            }
            $('.country_name').html(html);
        }
    })
    // 给每个国家添加点击事件
    var  $country_span=$('.country_travel>span');
    var  $city= $('.country_name>li').eq(0);
    var  $cityval=$city.text();
    $country_span.html($cityval);
    $.ajax({
        url:'http://127.0.0.1:8080/sel_glo/sel_city',
        type:'get',
        data:{glo:$cityval,page:0},
        dataType:'json',
        success:function(result){
            var allData=result;
            var html='';
            if(allData==1){
                $('.lpolis').remove()
            }else{
                for(var i of allData){
                    var city=i.countrycity;
                    var img=i.imgcity;
                    html+=`<li class="lpolisname">
                        <div>
                            <img src="${img}" alt="">
                        </div>
                        <a href="">${city}</a> 
                    </li>`;
                }
            }
        $('.lpolis').html(html);
        }
    })
    var $pagenum=0;
    $(".pageup").click(function(){
        if($pagenum>0){
            $pagenum-=8
            $(this).removeAttr('disabled','true');
        }else{
            $pagenum=0
            $(this).attr('disabled','true');
        }
        console.log($pagenum)
        return $pagenum;
    })
    $(".pagedown").click(function(){
        if($(".country_name>li").length>=8){
            $pagenum+=8;
            $(this).removeAttr('disabled','true');
        }else{
            $(this).attr('disabled','true');
        }
        console.log($pagenum)
        return $pagenum;
    })
    $country_span.html($('.country_name>li').eq(0).text());
    $('.country_name>li').click(function(){
        var $country=$(this).text()
        $country_span.html($country);
        $.ajax({
            url:'http://127.0.0.1:8080/sel_glo/sel_city',
            type:'get',
            data:{glo:$country,page:0},
            dataType:'json',
            success:function(result){
                if(result!=1){
                    var allData=result;
                    var html='';
                    $('.lpolis').html("");
                    console.log(allData)
                    for(var i of allData){
                        var city=i.countrycity;
                        var img=i.imgcity;
                        html+=`<li class="lpolisname">
                            <div>
                                <img src="${img}" alt="">
                            </div>
                            <a href="">${city}</a> 
                        </li>`;
                    }
                    $('.lpolis').html(html);
                }else{
                $('.lpolis').html("");
                }
            }
        })
    })
    $('.page_num>li').click(function(){
        $(this).addClass('active').siblings("li").removeClass("active");
    })  
})
 var $country=$(this).text()
        $country_span.html($country);
        $.ajax({
            url:'http://127.0.0.1:8080/sel_glo/sel_city',
            type:'get',
            data:{glo:$country,page:0},
            dataType:'json',
            success:function(result){
                if(result!=1){
                    var allData=result;
                    var html='';
                    $('.lpolis').html("");
                    console.log(allData)
                    for(var i of allData){
                        var city=i.countrycity;
                        var img=i.imgcity;
                        html+=`<li class="lpolisname">
                            <div>
                                <img src="${img}" alt="">
                            </div>
                            <a href="">${city}</a> 
                        </li>`;
                    }
                    $('.lpolis').html(html);
                }else{
                $('.lpolis').html("");
                }
            }
        })
// var params={url,type,data,dataType}
// function ajax(params){
//    return $.ajax({
//         url:url,
//         type:type,
//         data:data,
//         dataType:dataType,
//         success:function(result){
//             var allData=result;
//             var html='';
//             if(allData==1){
//                 $('.lpolis').remove()
//             }else{
//                 for(var i of allData){
//                     var city=i.countrycity;
//                     var img=i.imgcity;
//                     html+=`<li class="lpolisname">
//                         <div>
//                             <img src="${img}" alt="">
//                         </div>
//                         <a href="">${city}</a> 
//                     </li>`;
//                 }
//             }
//             $('.lpolis').html(html);
//         }
//     })
// }
