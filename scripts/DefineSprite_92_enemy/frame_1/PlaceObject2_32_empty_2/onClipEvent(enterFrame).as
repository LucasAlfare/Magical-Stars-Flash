onClipEvent(enterFrame){
   if(_root.cont.player.hitTest(_parent))
   {
      _root.cont.player.brain.status = "dead";
   }
   if(status eq "standing")
   {
      if(speedx == - s)
      {
         status = "moving";
         if(_root.map[myy][myx - 1] >= 20 or _root.map[myy + 1][myx - 1] == 0 or myx == 0)
         {
            speedx = s;
         }
      }
      else
      {
         status = "moving";
         if(_root.map[myy][myx + 1] >= 20 or _root.map[myy + 1][myx + 1] == 0 or myx == 29)
         {
            speedx = - s;
         }
      }
   }
   if(status eq "moving")
   {
      _parent._x = _parent._x + speedx;
      count = count + Math.abs(speedx);
      if(count >= 20)
      {
         status = "standing";
         count = 0;
         myx = myx + speedx / Math.abs(speedx);
      }
   }
}
