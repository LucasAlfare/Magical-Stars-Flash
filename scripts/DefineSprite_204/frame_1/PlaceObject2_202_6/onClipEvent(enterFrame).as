onClipEvent(enterFrame){
   this._y = this._y + speed;
   if(this._y < -10 or this._y > 100)
   {
      speed = -1 * speed;
   }
   if(random(100) > 98 and _root.timeleft > 0 and _root.timeleft < 20)
   {
      i = 0;
      while(i < 5)
      {
         duplicateMovieClip("star","star" + d,16384 + d);
         setProperty(this["star" + d], _X, random(280) - 140);
         setProperty(this["star" + d], _Y, 20);
         this["star" + d].xspeed = (random(21) - 10) / 10;
         this["star" + d].yspeed = random(21) / 10 + 1;
         d = d + 1;
         i++;
      }
   }
}
