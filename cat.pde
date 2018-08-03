size(600,800);
background(255);
noStroke();
noFill();

//Head
float headWidth = 250;
float headHeight = headWidth * 0.8;
float head_x = width/2;
float head_y = headHeight;

//Eyes
float eyeWidth = headWidth/4;
float eyeHeight = eyeWidth;
float pupilDiam = eyeHeight/1.3;
float eye_y = head_y;
  //left
  float leftEye_x = head_x-eyeWidth;
  float leftPupil_x = leftEye_x + eyeWidth/2 - pupilDiam/2;
  //right
  float rightEye_x = head_x+eyeWidth;
  float rightPupil_x = rightEye_x - eyeWidth/2 + pupilDiam/2;
//Nose
float nose_x = head_x;
float nose_y = head_y + eyeHeight/1.5;
float noseWidth = 10;
//Mouth
float mouthTop_y = nose_y;
float mouthTop_x = nose_x;
float mouthWidth = eyeHeight/1.5;
//OuterEars
float earHeight = headHeight/4;
float earTop_y = head_y - headHeight/2 - earHeight;
float earMid_y = head_y;
float earBottom_y = head_y - headWidth/2 + eyeWidth*2;
 //left
 float leftEarTop_x = leftEye_x;
 float leftEarBottom_x = leftEye_x - eyeWidth;
 float leftEarMid_x = leftEye_x + eyeWidth;
 //right 
 float rightEarTop_x = rightEye_x;
 float rightEarBottom_x = rightEye_x - eyeWidth;
 float rightEarMid_x = rightEye_x + eyeWidth;
//InnerEars
float innerEarTop_y = earTop_y + earHeight/2;
float innerEarMid_y = earMid_y;
float innerEarBottom_y = earBottom_y;
 //left
 float leftInnerEarTop_x = leftEye_x;
 float leftInnerEarBottom_x = leftEarBottom_x + earHeight/2;
 float leftInnerEarMid_x = leftEarMid_x - earHeight/2;
 //right
 float rightInnerEarTop_x = rightEye_x;
 float rightInnerEarBottom_x = rightEarBottom_x + earHeight/2;
 float rightInnerEarMid_x = rightEarMid_x - earHeight/2;
//Body
float bodyTop_x = head_x;
float bodyTop_y = head_y;
float bodyBottom_y = head_y + headHeight*1.5;
float bodyLeftBottom_x = head_x - headWidth/3;
float bodyRightBottom_x = head_x + headWidth/3;
//Paws
float pawWidth = (bodyRightBottom_x - bodyLeftBottom_x)/5;
float pawHeight = pawWidth;
float paw_y = bodyBottom_y - pawHeight;
  //left
  float leftPaw_x = bodyLeftBottom_x + pawWidth*1.5;
  //right
  float rightPaw_x = bodyRightBottom_x - pawWidth*1.5;
//Tail
float tailBottom_x = rightPaw_x;
float tailBottom_y = paw_y - pawHeight;
float tailSecond_x = bodyRightBottom_x + pawWidth;
float tailSecond_y = bodyBottom_y - pawHeight;
float tailThird_x = bodyRightBottom_x - pawWidth;
float tailThird_y = bodyBottom_y - headHeight*1.5;
float tailTip_x = tailThird_x + pawWidth*3;
float tailTip_y = bodyBottom_y - headHeight + pawHeight/2;
//drawing
//ears
fill(0);
  //left
  triangle(leftEarTop_x,earTop_y,leftEarMid_x,earMid_y,leftEarBottom_x,earBottom_y);
  //right
  triangle(rightEarTop_x,earTop_y,rightEarMid_x,earMid_y,rightEarBottom_x,earBottom_y);
//innerEars
fill(250);
  //left
  triangle(leftInnerEarTop_x,innerEarTop_y,leftInnerEarMid_x,innerEarMid_y,leftInnerEarBottom_x,innerEarBottom_y);
  //right
  triangle(rightInnerEarTop_x,innerEarTop_y,rightInnerEarMid_x,innerEarMid_y,rightInnerEarBottom_x,innerEarBottom_y);
//body
fill(0);
triangle(bodyTop_x,bodyTop_y,bodyLeftBottom_x,bodyBottom_y,bodyRightBottom_x,bodyBottom_y);
//paws
fill(250);
stroke(0);
  //left
  arc(leftPaw_x, paw_y, pawWidth, pawHeight, 0, PI, OPEN);
  //right
  arc(rightPaw_x, paw_y, pawWidth, pawHeight, 0, PI, OPEN);
//tail
stroke(0);
noFill();
strokeWeight(headWidth/15);
bezier(tailBottom_x,tailBottom_y,tailSecond_x,tailSecond_y,tailThird_x,tailThird_y,tailTip_x,tailTip_y);
strokeWeight(1);
//head
fill(0,0,0);
ellipse(head_x,head_y,headWidth,headHeight);
//eyes
fill(255);
  //left
  ellipse(leftEye_x, eye_y, eyeWidth, eyeHeight);
  //right
  ellipse(rightEye_x, eye_y, eyeWidth, eyeHeight); 
//pupils
fill(0,0,0);
  //left
  ellipse(leftPupil_x, eye_y, pupilDiam, pupilDiam);
  //left pupil
  ellipse(rightPupil_x, eye_y, pupilDiam, pupilDiam);
//nose
fill(255);
triangle(nose_x,nose_y,nose_x + noseWidth, nose_y - noseWidth,nose_x - noseWidth, nose_y - noseWidth);
//mouth
stroke(255);
noFill();
beginShape();
vertex(mouthTop_x, mouthTop_y);
bezierVertex(mouthTop_x, mouthTop_y, mouthTop_x + mouthWidth/2, mouthTop_y + mouthWidth, mouthTop_x + mouthWidth, mouthTop_y + mouthWidth/4);
endShape();
beginShape();
vertex(mouthTop_x, mouthTop_y);
bezierVertex(mouthTop_x, mouthTop_y, mouthTop_x - mouthWidth/2, mouthTop_y + mouthWidth, mouthTop_x - mouthWidth, mouthTop_y + mouthWidth/4);
endShape();

save("cat.png");
