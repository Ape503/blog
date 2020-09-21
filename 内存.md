# 类型转换
toString()、Windows.String():String()是全局函数 可以将其它的类型变成String类型
Boolean()、!!():两次取反最常用 可以将其它的类型变成Boolean类型

# 内存回收
垃圾：文档中的数据不被调用
垃圾回收：文档中的数据没有被引用就会被浏览器不定期的自动回收

解决ie内存泄漏问题  windown.onload=function(){
	document.body.onclick=null
}

var n =1||var n =new number{} 不常用

缺点：基本类型没有属性 
解决：创建临时
var temp=new number(n)
 temp.toString()
声明结束就被回收
