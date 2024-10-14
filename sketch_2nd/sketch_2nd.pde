

int numA = 13;
int numB = 10;
float ratio = (float)numB/numA;
float xPos = 0;
float yPos = 0;
int itr = 0;

//描画
size(500, 500);
colorMode(HSB, 1);
float wd = width;

//繰り返し処理
while (wd > 0.1){
	itr++;
	if (itr % 2 == 1){
		while (xPos + wd * ratio < width + 0.1){
			fill(color(random(1), 0.3, 1)); 
			rect(xPos, yPos, wd*ratio, wd);
			xPos += wd*ratio;
		}
		wd = width*ratio;
	}else{
		while (yPos + wd / ratio < width + 0.1){
			fill(color(random(1), 0.3, 1));
			rect(xPos, yPos, wd, wd/ratio);
			yPos += wd/ratio;
		}
		wd = width - yPos;
	}
}
