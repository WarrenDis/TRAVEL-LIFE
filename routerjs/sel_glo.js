//引入express模块
const express=require('express');
//引入pool连接池
const pool=require('../pool');
// 创建路由
var router=express.Router();
// 查询全世界的每个地区的国家
router.get('/sel_global',(req,res)=>{
    var glo=req.query.glo;
    var sql='select * from global_country where global_container=?';
    pool.query(sql,[glo],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send({case:200,msg:"123",data:result}); // 
        }else{res.send('123')}
    })
})
//查询每个国家的省份
router.get('/sel_city',(req,res)=>{
    var $cou=req.query.glo;
    var $page=parseInt(req.query.page);
    var sql='select * from country_city where countryname=? limit ?,8';
    pool.query(sql,[$cou,$page],(err,result)=>{
        if(err)throw err;
        if(result.length>0){
            console.log(result)
            res.send(result)
        }else(
            res.send("1")
        )
    })
})
module.exports=router;