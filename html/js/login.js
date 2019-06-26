// 登录界面的交互效果
(function(){
var phone=document.getElementById("phone");
var upwd=document.getElementById("upwd");
phone.onblur=function(){
    vail(this,/^\w{2,11}$/);   
}
upwd.onblur=function(){
    vail(this,/^\w{6,18}$/);
}
function vail(txt,reg){
    var view_p=txt.previousElementSibling;
    if(reg.test(txt.value)){
        view_p.style.backgroundColor="#45b97c";
        view_p.innerHTML="正确√";
    }else{
        view_p.style.backgroundColor="#ed1941";
        view_p.innerHTML="错误×";
    }
}
phone.onfocus=function(){
    var view_p=this.previousElementSibling;
    view_p.style.backgroundColor="#fcaf17";
    view_p.innerHTML="请输入手机号码";
}
upwd.onfocus=function(){
    var view_p=this.previousElementSibling;
    view_p.style.backgroundColor="#fcaf17";
    view_p.innerHTML="请输入密码";
}
})();
    
