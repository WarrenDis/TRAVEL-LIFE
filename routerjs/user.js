const express=require('express');
const pool=require("../pool.js");
var router=express.Router();
//用户注册
router.post('/reg',(req,res)=>{
	var obj=req.body;
	pool.query('select * from user_travel where phone=?',[obj.phone],(err,result)=>{
		if(err)throw err;
		if(result.length>0){
			res.send({case:400,msg:'该用户已注册'});
		}else{
			pool.query('insert into user_travel set ?',[obj],(err,result)=>{
				if(err)throw err;
				if(result.affectedRows>0){
					res.send({case:200,msg:'注册成功,正在跳转登录...'});
				}else{
					res.send({case:400,msg:'注册失败,请重新注册...'});
				}
			});
		}
	});
});
//用户登录
router.post('/login',(req,res)=>{
	var obj=req.body;
	var $phone=obj.phone;
	pool.query('select * from user_travel where phone=? and upwd=?',[$phone,obj.upwd],(err,result)=>{
		if(err)throw err;
		if(result.length>0){
			res.send({case:200,msg:'登录成功',result});
		}else{
			res.send({case:400,msg:'账号或者密码错误！'});
		}
	});
});
module.exports=router;