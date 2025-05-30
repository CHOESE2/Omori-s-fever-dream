

void gameClicks() {
}




void game() {
  
   

  background(brown);
  fill(255);
  stroke(brown);
  rect(80, 80, 440, 440);
  //MUSIC-------------------------------------
  
 
  
   if (Defeat.isPlaying()) {
    Defeat.stop();
  }
  
  if(MEWO2.isPlaying()){
    MEWO2.stop();
  }   
  if (Rain.isPlaying()) {
     Rain.stop();
 }
 if(Home.isPlaying()){
    Home.stop();
  }
  

 
  
  if (!BgMusic.isPlaying() && mode == GAME || mode == BUNNYFIGHT) {
    BgMusic.loop();
  }
  


 



  //BOUNDERIES ROBIN
  if (BOY.robinx < 100) BOY.robinx = 100;
  if (BOY.robinx > 490) BOY.robinx = 490;
  if (BOY.robiny < 75) BOY.robiny = 75;
  if (BOY.robiny > 470) BOY.robiny = 470;
  //BOUNDERIES ROI
  if (GIRL.roix < 100) GIRL.roix = 100;
  if (GIRL.roix > 490) GIRL.roix = 490;
  if (GIRL.roiy < 75) GIRL.roiy = 75;
  if (GIRL.roiy > 470) GIRL.roiy = 470;




  //images

  image(bunni, bunnix, bunniy, 50, 50);
  image(apple, applex, appley, applew, appleh);
  
  
  //mewo
  interact(100, 100, 150, 150);
  image(mewo, 150, 200, 20, 20);


  //image(knife, knifex, knifey, 100, 100);

  BOY.display();
  GIRL.display();


  ///----------------------------------------------------------




  if (winnerOn == true) {
    knifeOn = true;
    // image(knife, knifex, knifey, knifew, knifeh);
  }





  //apple
  // collision
  if (dist(BOY.robinx, BOY.robiny, applex, appley) <= 65 + 50 ) {
    CollectAPP.play();
  
    applex = random(105, 495);
    appley = random(105, 495);
    point = point + 1;
    w += 2;
  }

  if (dist(GIRL.roix, GIRL.roiy, applex, appley) <= 65 + 50) {
    CollectAPP.play();
    applex = random(105, 495);
    appley = random(105, 495);
    point2 = point2 + 1;
    wb += 2;
  }





  //bunni collision
  if (!bunniOn && random(100) < 1) {
    bunnix = random(105, 495);
    bunniy = random(105, 495);
    bunniOn = true;
  }

  if (bunniOn) {
    image(bunni, bunnix, bunniy, 50, 50);
  }

  if (dist(BOY.robinx, BOY.robiny, bunnix, bunniy) <= 65 + 25 && knifeCO == false) {
    mode = BUNNYFIGHT;
    bunniOn = false;
  }


  if (dist(GIRL.roix, GIRL.roiy, bunnix, bunniy) <= 65 + 25 && knifeCO == false) {
    mode = BUNNYFIGHT;
    bunniOn = false;
  }

  //---------------------------------------
  if (knifeCO == true) {
    textSize(15);
      fill(255);
    text("ROI, press ' e ' to stab", 50, 48);
    fill(173, 41, 17);
    text("be weary of MEWO..", 200, 150);
    stroke(0);
    strokeWeight(2);
    fill(255);
    rect(bunnix - 46, bunniy - 72, 93, 10);
    fill(0, 255, 0);
    rect(bunnix - 46, bunniy - 72, BH, 10);

    if (BH < 62) {
      fill(255, 172, 70);
      rect(bunnix - 46, bunniy - 72, BH, 10);
    }
    if (BH < 31) {
      fill(255, 0, 0);
      rect(bunnix - 46, bunniy - 72, BH, 10);
    }

    if (dist(GIRL.roix, GIRL.roiy, bunnix, bunniy) <= 65 + 25 && eKey) {
      BH -= 5;
    }

    if (BH <= 0) {
      BH = 0;
      stroke(0);
      fill(255, 0, 0);
      textSize(15);
      strokeWeight(5);
      text("you are ready to face on _____, ROI.", 80, 560);
  }


  if (dist(GIRL.roix, GIRL.roiy, mewox, mewoy) <= 65 + 10 && knifeCO == true) {
    mode = MEWO;


  if (dist(BOY.robinx, BOY.robiny, mewox, mewoy) <= 65 + 10 && knifeCO == true) {
    mode = MEWO;
  }

      
   
    }



    if (eKey && !knifeOn) {
      knifeOn = true;
    }
    if (knifeOn && eKey && current_ACT == WGRight) {
      image(knife, GIRL.roix + 16, GIRL.roiy + 14, knifew, knifeh);
    }

    if (knifeOn && eKey && current_ACT == WGLeft) {
      image(knifeL, GIRL.roix - 16, GIRL.roiy + 10, knifew, knifeh);
    }
  }
 
}


  
   void interact (int x, int y, int w, int h) {
  if (BOY.robinx > x && BOY.robinx < x + w && BOY.robiny > y  && BOY.robiny < y + h){
    strokeWeight(5);
    fill(0);
    textSize(15);
    text("hmm", 150, 150);
  }
  
   if (GIRL.roix > x &&  GIRL.roix < x + w && GIRL.roiy > y  && GIRL.roiy < y + h){
    strokeWeight(5);
    fill(0);
    textSize(15);
    text("hmm", 150, 150);
   }
  }
   
   
   
  
