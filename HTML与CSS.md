## 引入css四种方式 
    内联style属性----这是早期使用方法
    style标签
    外部文件css link
    @import url()---向一个css文件引入一个css文件

 ## div的高度由其内部文档流元素的高度总合决定
   文档流--文档内元素的流动方向
   内联元素--从左向右   块级元素--从上到下
   内联元素不支持设置宽高  ---加属性 display:inline-block
   
脱离文档流position属性  绝对定位：父position: relative;子position: absolute;
                       固定定位：position: fixed;相对于窗口的位置
 before after伪元素可以省去一个div
                       
# svg 相关
  解决上部与下部距离相等  vertical-algin:top
