onClipEvent(enterFrame){
   if(this._currentframe == 1)
   {
      this._y = this._y + yspeed;
      this._x = this._x + xspeed;
      if(this._y > 450 or this._x < -200 or this._x > 200)
      {
         removeMovieClip(this);
      }
      if(random(100) > 98)
      {
         xspeed = (random(21) - 10) / 10;
         yspeed = random(21) / 10 + 1;
      }
      if(this.hitTest(_parent._parent.cont.hero))
      {
         _root.punkt = _root.punkt + 10;
         this.gotoAndPlay(2);
         punkt._visible = false;
      }
      if(_root.timeleft <= 0)
      {
         removeMovieClip(this);
      }
      this._rotation = this._rotation + xspeed * 5;
   }
}
