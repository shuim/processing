float x;
float y;
float px;
float py;
//easingの値は小さければ小さいほど線が滑らかに
float easing = 0.20;


void setup(){
  size(960,960);
  background(255);
  //strokeWeight(4);
//  stroke(0,102);
  stroke(128,128,128,256);

}

void draw(){
// linedraw();

//透明度の設定

//マウスを押されてない間はリターンし続ける
if(mousePressed==false){
  return;
}

//半透明
if(key=='t'){
  stroke(128,128,128,32);
}
//不透明
else if(key=='n'){
  stroke(128,128,128,256);
}

easingdraw(easing);
}

//マウスの動きが早ければ線が細くなるように
void easingdraw(float easing){
float targetX = mouseX;
x += (targetX - x) * easing;
float targetY = mouseY;
y += (targetY - y) * easing;

float weight = dist(x,y,px,py);
weight = 10/weight;
//太さは30を上限に
weight = min(30,weight);
weight = weight + 5;
strokeWeight(weight);
line(x,y,px,py);
py=y;
px=x;

}

void linedraw(){
//マウスの移動距離が早ければweightが大きい
  float weight = dist(mouseX,mouseY,pmouseX,pmouseY);
//早い方が線を細くしたいので逆数をとる  
  weight = 10/weight;
//遅いとき値が大きくなりすぎるので最大でも100になるように修正
  weight = min(weight,20);
  println(weight);
  strokeWeight(weight);  
  line(mouseX,mouseY,pmouseX,pmouseY);
}  
  
