
void winnerClicks() {
}





void winner() {

  if (BgMusic.isPlaying()) {
    BgMusic.stop();
  }

  if (Rain.isPlaying()) {
    Rain.stop();
  }

  if (MEWO2.isPlaying()) {
    MEWO2.stop();
  }

  if (Defeat.isPlaying()) {
    Defeat.stop();
  }





  if (!Home.isPlaying()) {
    Home.loop();
  }

  background(brown);
  fill(255);
  stroke(brown);
  fill(0);
  fill(#F5EFE7);
  rect(50, 150, 500, 330);


  //MEWOCAT = false
  fill(brown);
  rect(50, 35, 500, 140);


  //-----------INTERIOR
  image(ROBBED, robx, roby); //BED
  image(ROIBED, ribx, riby); //BED

  image(TABLE1, tabx, taby);
  image(TABLE1, 388, taby);
  image(clock, clockx, clocky);
  image(carpet, carpetx, carpety);
  image(plant, plantx, planty);
  image(egg, eggx, eggy);
  image(phone, phonex, phoney);
  image(FBOWL, fbx, fby, fbw, fbh);
  image(Obook, Obx, Oby, Obw, Obh);









  //MUSIC-------------------------------------


  if (Defeat.isPlaying()) {
    Defeat.stop();
  }

  if (MEWO2.isPlaying()) {
    MEWO2.stop();
  }
  if (Rain.isPlaying()) {
    Rain.stop();
  }




  if (!BgMusic.isPlaying() && mode == GAME || mode == BUNNYFIGHT) {
    BgMusic.loop();
  }

  //---------------



  //BOUNDERIES ROBIN
  if (BOY.robinx < 60) BOY.robinx = 60;
  if (BOY.robinx > 540) BOY.robinx = 540;
  if (BOY.robiny < 150) BOY.robiny = 150;
  if (BOY.robiny > 435) BOY.robiny = 435;
  //BOUNDERIES ROI
  if (GIRL.roix < 60) GIRL.roix = 60;
  if (GIRL.roix > 540) GIRL.roix = 540;
  if (GIRL.roiy < 150) GIRL.roiy = 150;
  if (GIRL.roiy > 435) GIRL.roiy = 435;


  //ROOM BOUNDERIES

  if (BOY.robiny < 280 && BOY.robiny > 270 && BOY.robinx < 170)BOY.robiny = 280; //ROBBED
  if (GIRL.roiy < 280 && GIRL.roiy > 270 && GIRL.roix < 170)GIRL.roiy = 280;

  if (GIRL.roiy < 280 && GIRL.roiy > 270 && GIRL.roix > 430)GIRL.roiy = 280; //ROIBED
  if (BOY.robiny < 280 && BOY.robiny > 270 && BOY.robinx > 430)BOY.robiny = 280;

  //SHELVES
  if (BOY.robiny < 200 && BOY.robinx < 260 && BOY.robinx > 190 && BOY.robinx < 250)BOY.robiny = 200; //shelf1
  if (GIRL.roiy < 200 && GIRL.roiy < 260 && GIRL.roix > 190 && GIRL.roix < 250) GIRL.roiy = 200;

  if (BOY.robiny < 200 && BOY.robinx < 440 && BOY.robinx > 355)BOY.robiny = 200; //shelf2
  if (GIRL.roiy < 200 && GIRL.roiy < 440 && GIRL.roix > 355)GIRL.roiy = 200;
  
   if (BOY.robiny < 315 && BOY.robiny > 300 && BOY.robinx < 150 && BOY.robinx > 85)BOY.robiny = 315;
   if (GIRL.roiy < 315 && GIRL.roiy > 300 && GIRL.roix < 150 && GIRL.roix > 85)GIRL.roiy = 315;
  
  
  //------------------------------------------------------------------------------------


  BOY.display();
  GIRL.display();

  if (MEWOCAT) {
    cat(125, 230, 100, 100);
    image(MEWOCAT1, 125, 230);
  }







  if (dist(BOY.robinx, BOY.robiny, robx, roby) < BOY.robinw/2 - 10 && !mewoDEAD) {
    RON = true;
  }

  if (dist(GIRL.roix, GIRL.roiy, ribx, riby) < GIRL.roiw/2 - 10 && !mewoDEAD) {
    RION = true;
  }

  if (RION && RON) {
    mode = GAME;
  }
}





void cat (int x, int y, int w, int h) {
  if (BOY.robinx > 95 && BOY.robinx < 150 && BOY.robiny > 180  && BOY.robiny < 270) {

    fill(0);
    textSize(15);
    rect(100, 420, 300, 45);
    fill(255, 0, 0);
    text("you killed me.", 125, 450);
  }

  if (GIRL.roix > 95 &&  GIRL.roix < 150 && GIRL.roiy > 180  && GIRL.roiy < 270 ) {

    fill(0);
    textSize(15);
    rect(100, 420, 300, 45);
    fill(255);
    text("MEWO:        * mew *", 125, 450);
  }






  ///----------------------------------------------------------
}

