int divRect(float xPos, float yPos, float wd){
  int itr = 0;
  float xEndPos = xPos + wd;
  float yEndPos = yPos + wd / ratio;
  
  int col_cnt= 0;
  float time = 0.0;
  
  while (wd > 0.1){
    itr++;
    time = millis()/35000.0;
    println(time);
    if (itr % 2 == 0){
      while (xPos + wd < xEndPos + 0.1){
        col_cnt++;
        fill(color((col_cnt*0.04+time) % 1.0, 0.4, 1));  //色を指定    
        //fill(color((itr * ratio) % 1, 1, 1));  //色を指定    
        rect(xPos, yPos, wd, wd);
        xPos += wd;
      }
      wd = xEndPos - xPos;
    } else {
      while (yPos + wd < yEndPos + 0.1){
        col_cnt++;
        fill(color((col_cnt*0.04+time) % 1.0, 0.4, 1));  //色を指定    
        rect(xPos, yPos, wd, wd);
        yPos += wd;
      }
      wd = yEndPos - yPos;
    }
  }
  return itr;
}
