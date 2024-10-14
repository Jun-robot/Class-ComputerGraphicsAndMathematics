import controlP5.*;
ControlP5 cp5;

float ratio = sqrt(2);
boolean rec = false;  //画像保存のための論理型変数
String namePNG;

void setup(){
  size(1000, 653); //描画ウィンドウの横縦比をsqrt(2):1に設定
  colorMode(HSB, 1);
  controller();  //controller関数を呼び出し
}
void draw(){
  background(0, 0, 1);
  float scalar = pow(50, mouseX * 1.0 / width) * width;
  //println(scalar);
  //マウスのカーソルのX座標によって長方形を1～50倍まで拡大する
  divRect(width - scalar, height - scalar / ratio, scalar);  //長方形を分割
  
  if (rec){
    String timeStamp = str(year()) + str(month())
                      + str(day()) + str(hour()) + str(minute()) + str(second());
    namePNG = timeStamp + ".png";  //PNGの保存ファイル名
  }
  
  if(rec){
    //endRecord();
    save(namePNG);
    rec = false;
  }
}
