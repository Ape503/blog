var yyy = document.getElementById ('xxx');

  autoSetCanvasSize(yyy);

function listenToMouse(){
  
}
var context = yyy.getContext('2d');
var using = false
var lastPoint = {x: undefined,y: undefined}	



//特性检测
if(document.body.ontouchstart!==undefined){
  //是否是触屏设备
  canvas.ontouchstart=function(aaa){
    // console.log('开始摸了')
    var x =aaa.touches[0].clientX
	var y =aaa.touches[0].clientY
	if(eraserEnabled){
		using=true
		context.clearRect(x-5,y-5,10,10);
	}else{
		using = true
		lastPoint={"x":x,"y":y}		//记下按下点
	}
  }
  canvas.ontouchmove=function(aaa){
    // console.log('边摸变动')
    var x = aaa.touches[0].clientX
	var y = aaa.touches[0].clientY
	if(eraserEnabled){
		if(using){
			context.clearRect(x-5,y-5,10,10);
		}
	}else{
			if (using){
			

			var newPoint = {"x": x,"y": y}	//记下松开点

			drawLine(lastPoint.x,lastPoint.y,newPoint.x,newPoint.y)

			lastPoint=newPoint    //更新最后一个点
		}
	
	}
  }
  canvas.ontouchend=function(aaa){
    // console.log('摸完了')
    using =false
  }
}



yyy.onmousedown =function(aaa){
	var x =aaa.clientX
	var y =aaa.clientY
	if(eraserEnabled){
		using=true
		context.clearRect(x-5,y-5,10,10);
	}else{
		using = true
		lastPoint={"x":x,"y":y}		//记下按下点
	}
}

yyy.onmousemove = function (aaa) {
		var x = aaa.clientX
		var y = aaa.clientY
	if(eraserEnabled){
		if(using){
			context.clearRect(x-5,y-5,10,10);
		}
	}else{
			if (using){
			

			var newPoint = {"x": x,"y": y}	//记下松开点

			drawLine(lastPoint.x,lastPoint.y,newPoint.x,newPoint.y)

			lastPoint=newPoint    //更新最后一个点
		}
	
	}
}

yyy.onmouseup=function(aaa) {
	using =false
}


/***************/

var eraserEnabled =false
eraser.onclick=function(){
	eraserEnabled=!eraserEnabled
    if(eraserEnabled){
      eraser.textContent="画笔"    
    }else{
      eraser.textContent="橡皮擦"
    }
}


/*****自动获取Canvas窗口尺寸***/
function autoSetCanvasSize(canvas){
  setCanvasSize()

window.onresize=function(){
	setCanvasSize()
}
function setCanvasSize(){
	var pageWidth=document.documentElement.clientWidth
	var pageHeight=document.documentElement.clientHeight    //获取窗口宽高

	yyy.width=pageWidth
	yyy.height=pageHeight
  }
}



function drawCircle(x, y,radius) {
context.beginPath()
context.fillStyle='black'
context.arc(x, y,radius, 0,Math.PI * 2)  //画圆
context.fill()
}

function drawLine(x1,y1,x2,y2) {		//划线
context.beginPath()
context.strokeStyle='black'
context.moveTo(x1,y1)     //起点
context.lineWidth = 5
context.lineTo(x2,y2)      //终点
context.stroke()
context.closePath()
}
