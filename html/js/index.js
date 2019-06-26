//轮播图实现效果代码
$(function(){
    var $slideTo=$('.frist_two');
    var $slide=$('.frist_main')
    var i=0;
    var $slide_li=$('.slide_btn>li');
    // console.log($slide_li)
    var $btn_left=$('.btn-left');
    var $btn_right=$('.btn-right');
    //点击回到的图标对应的图片
    $slide_li.on("click",function (){
        $(this).addClass("active").siblings("li").removeClass("active");
        i=$(this).index();
        $slideTo.css({
            "right":1500*i, 
        });    
    });
    //左右按钮的实现上下翻页
     $btn_left.click(function(){
        i--;
        if(i<0){
            i=$slide_li.length-1;
        }
        $slide_li.eq(i).trigger('click');
     });
     $btn_right.click(function(){
        i++;
        if(i==$slide_li.length){
            i=0;
        }
        $slide_li.eq(i).trigger('click');
     });
     function timer(){
        i++;
        var wslid=i*1500;
        $slideTo.animate({"right":wslid},1000);
        if(i==$slide_li.length){
            i=0;
            $slideTo.animate({
                "right":0, 
                    },0);
        }
        $slide_li.eq(i).addClass('active').siblings("li").removeClass("active");
     }
    //轮播周期定时器及左右箭头隐藏显示
     $btn_left.css("display","none")
     $btn_right.css("display","none")
    var setTime=setInterval(() => {
        timer();
    }, 3000);
    $slide.mouseover(function(){
        clearInterval(setTime)
        $btn_left.css("display","block")
        $btn_right.css("display","block")
    })
    $slide.mouseout(function(){
        setTime=setInterval(()=>{
            timer()
        },3000)
        $btn_left.css("display","none")
        $btn_right.css("display","none")
    })
    
})