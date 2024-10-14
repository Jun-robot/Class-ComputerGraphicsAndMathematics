//横縦比がnumA:numBの長方形を正方形によって分割
int numA = 10;
int numB = 6;
float ratio = (float)numB / numA;  //横縦比

//プログラム実行中に動く変数
float wd = width;    //分割に使う正方形の幅の大きさ(初期値numB)
float xPos = 0;    //正方形のx位置(初期値0)
float yPos = 0;    //正方形のy位置(初期値0)
int itr = 0;  //分割の繰り返し回数(初期値0)
color col;
colorMode(HSB, 1);

//描画
size(500, 500);    //描画ウィンドウサイズ
//繰り返し処理
while (wd > 0.1){
	itr++;
	if (itr % 2 == 1){
		while (xPos + wd * ratio < width + 0.1){    //幅を足したとき，長方形を超えなければ以下を実行
			col = color(random(1), 0.3, 1);  //ランダムな色を生成
			fill(col);    //色を塗る
			rect(xPos, yPos, wd*ratio, wd);      //(xPos,yPos)を左上の頂点とする1辺wdの正方形を描画
			xPos += wd*ratio;                //x位置を更新
		}
		wd -= width*ratio;             //幅を更新
	} else {              //繰り返し回数が偶数のとき，y軸方向へ正方形を加える
		while (yPos + wd / ratio < width + 0.1){    //幅を足したとき，長方形を超えなければ以下を実行
			col = color(random(1), 0.3, 1);  //ランダムな色を生成
			fill(col);    //色を塗る
			rect(xPos, yPos, wd, wd/ratio);      //(xPos,yPos)を左上の頂点とする1辺wdの正方形を描画
			yPos += wd/ratio;                //y位置を更新
		}
		wd = width - yPos;            //幅を更新
	}
}
