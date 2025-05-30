
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
  
  
  
  
  
  
  
  
  if(!Home.isPlaying()){
    Home.loop();
  }

  background(brown);
  fill(255);
  stroke(brown);
  rect(50, 150, 500, 330);
  fill(9, 25, 72);
  rect(50, 35, 500, 140);
  //-----------INTERIOR
  image(ROBBED, robx, roby, robw, robh); //BED
  image(ROIBED, ribx, riby, ribw, ribh); //BED

  image(TABLE1, tabx, taby, tabw, tabh);
  image(TABLE1, 388, taby, tabw, tabh);
  image(clock, clockx, clocky, clockw, clockh);
  image(carpet, carpetx, carpety, carpetw, carpeth);
  image(plant, plantx, planty, plantw, planth);
  image(egg, eggx, eggy, eggw, eggh);
  image(phone, phonex, phoney, phonew, phoneh);









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
if (BOY.robiny < 200 && BOY.robinx < 260 && BOY.robinx > 190)BOY.robiny = 200; //shelf1
if (GIRL.roiy < 200 && GIRL.roiy < 260 && GIRL.roix > 190)GIRL.roiy = 200;

if (BOY.robiny < 200 && BOY.robinx < 440 && BOY.robinx > 355)BOY.robiny = 200; //shelf2
if (GIRL.roiy < 200 && GIRL.roiy < 440 && GIRL.roix > 355)GIRL.roiy = 200;
//------------------------------------------------------------------------------------


  BOY.display();
  GIRL.display();

//if (MEWOCAT){
  
  cat(125, 230, 100, 100);
  image(MEWOCAT1, 125, 230, 100, 100);







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
  if (BOY.robinx > 95 && BOY.robinx < 150 && BOY.robiny > 180  && BOY.robiny < 270){
    strokeWeight(5);
    fill(0);
    textSize(15);
    fill(255, 0, 0);
    text("you killed me.", 125, 450);
  }
  
   if (GIRL.roix > 95 &&  GIRL.roix < 150 && GIRL.roiy > 180  && GIRL.roiy < 270 ){
    strokeWeight(5);
    fill(0);
    textSize(15);
    rect(100, 420, 300, 45);
    fill(255);
    text("MEWO:        * mew *", 125, 450);
   }
  
   





























  ///----------------------------------------------------------
}
