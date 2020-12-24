onClipEvent(load){
   status = "standing";
   count = 0;
   s = 5;
   myx = _parent._x / _root.tilewidth;
   myy = _parent._y / _root.tilewidth;
   if(myx > 15)
   {
      speedx = - s;
      gotoAndPlay(10);
   }
   else
   {
      speedx = s;
   }
   speedy = - s;
   shoot = 0;
}
