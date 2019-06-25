//创建web服务器
const express=require('express');
const bodyParser=require('body-parser');
//链接路由
const useRouter=require('./routerjs/user.js');
const sel_gloRouter=require('./routerjs/sel_glo.js')
const cors=require('cors');
//监听端口
var server=express();server.listen(8080);
server.use(bodyParser.urlencoded({
	extended:false
}));
server.use(cors({
	origin:"http://127.0.0.1:5500",
	credentials:true
}))
//引入静态资源
server.use(express.static('html'));
//挂载路由
server.use('/user',useRouter);
server.use('/sel_glo',sel_gloRouter);