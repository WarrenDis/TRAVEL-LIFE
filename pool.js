//创建连接池
const mysql=require('mysql');
var pool=mysql.createPool({
	host:'127.0.0.1',
	post:'3306',
	user:'root',
	password:'',
	database:'travel_lift',
	connectLimit:35
});
//导出连接池
module.exports=pool;