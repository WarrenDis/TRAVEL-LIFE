// (function(){
//     var phone=document.getElementsByClassName("input_phone")[0];
//     var upwd=document.getElementsByClassName("input_upwd")[0];
//     var uname=document.getElementsByClassName("input_uname")[0];
//     phone.onblur=function(){
//         vail(this,/^\w{2,11}$/);   
//     }
//     upwd.onblur=function(){
//         vail(this,/^\d{6,18}$/);
//     }
//     uname.onblur=function(){
//         vail(this,/^\w{2,8}$/);
//     }
//     function vail(txt,reg){
//         var view_p=txt.nextElementSibling;
//         if(reg.test(txt.value)){
//             view_p.style.backgroundColor="#45b97c";
//             view_p.innerHTML="正确√";
//         }else{
//             view_p.style.backgroundColor="#ed1941";
//             view_p.innerHTML="错误×";
//         }
//     }
//     phone.onfocus=function(){
//         var view_p=this.nextElementSibling;
//         view_p.style.backgroundColor="#fcaf17";
//         view_p.innerHTML="请输入11位手机号码";
//     }
//     upwd.onfocus=function(){
//         var view_p=this.nextElementSibling;
//         view_p.style.backgroundColor="#fcaf17";
//         view_p.innerHTML="请输入6到18位手机";
//     }
//     uname.onfocus=function(){
//         var view_p=this.nextElementSibling;
//         view_p.style.backgroundColor="#fcaf17";
//         view_p.innerHTML="请输入2到8位字母及数字";
//     }
//     })();
$(function(){
    var $uname=$(".input_uname");
    var $upwd=$(".input_upwd");
    var $phone=$(".input_phone");
    $uname.blur(function(){vail.call(this,/^\w{2,9}$/)});
    $upwd.blur(function(){vail.call(this,/^\w{6,12}$/)});
    $phone.blur(function(){vail.call(this,/^[1][3-9][0-9]{9}$/)});
    function vail(reg,msg){
        var $txt=$(this);
        var $span=$txt.next();
        // console.log(reg.test($txt.val()));
        if(reg.test($txt.val())){
            $span.html("格式正确√");
            $span.css("background","green")
        }else{
            $span.html("格式错误×");
            $span.css("background","red")
        }
    }
    $uname.focus(function(){
        $(this).next().html("用户名长度2到9位之间");
        $(this).next().css("background","#fcaf17")
    })
    $upwd.focus(function(){
        $(this).next().html("密码长度6到12位之间");
        $(this).next().css("background","#fcaf17")
    })
    $phone.focus(function(){
        $(this).next().html("手机号长度为11位");
        $(this).next().css("background","#fcaf17")
    })  
    if(!$('.Must_checkbox').attr('checked')){
        $('.regist_btn').attr('disabled','true')
    }
    // $('.regist_btn').click=function(){
    //     if($('.regist_btn').attr('disabled')==true){
    //         alert('未同意协议')
    //     }
    // }
    $('.Must_checkbox').change(function(){
        if($(this).prop('checked')){
            $('.regist_btn').removeAttr('disabled')
        }else{
            $('.regist_btn').attr('disabled','true')
        }
    })  
    // $('.regist_btn').(function(){
    //     if($(this).attr('disabled')){
    //         alert('请同意协议后再注册')
    //     }
    // })
    uname=$uname.val();
    phone=$phone.val();
    upwd=$upwd.val();
    var str="uname="+uname+"&phone="+phone+"&upwd="+upwd;
    $('.regist_btn').click=function(){
        $.ajax({
            url:'http://127.0.0.1:8080/user/reg',
            type:'post',
            data:str,
            // datatype:'json',
            success: function(result) {
                console.log(result);
            }
        })
    }   
})
// var regist=function(){
//     var xhr=new XMLHttpRequest();
//     xhr.onreadystatechange=function(){
//         if(xhr.readState==4&&xhr.status==200){
//             var result=xhr.responseText;
//             alert(result);
//         }
//     }
//     xhr.open('post','/user/reg',true);
//     xhr.setRequestHeader('Content-type','application/x-www-form-urlencoded');
//     var formdata='uname='+uname.value+'&upwd='+uped.value+'&phone='+phone.value;
//     xhr.send(formdata);
// }
