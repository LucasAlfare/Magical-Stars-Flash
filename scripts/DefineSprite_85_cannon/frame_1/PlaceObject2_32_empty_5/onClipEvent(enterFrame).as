onClipEvent(enterFrame){
   if(_root.cont.player.hitTest(_parent))
   {
      _root.cont.player.brain.status = "dead";
   }
   if(status eq "standing" and shoot != 1)
   {
      if(speedy == - s)
      {
         if(_root.map[myy - 1][myx] == 22)
         {
            status = "moving";
            speedy = - s;
         }
         else
         {
            status = "moving";
            speedy = s;
         }
      }
      else if(speedy == s)
      {
         if(_root.map[myy + 1][myx] == 22)
         {
            status = "moving";
            speedy = s;
         }
         else
         {
            status = "moving";
            speedy = - s;
         }
      }
   }
   if(status eq "moving" and shoot != 1)
   {
      _parent._y = _parent._y + speedy;
      count = count + Math.abs(speedy);
      if(count >= 20)
      {
         status = "standing";
         count = 0;
         myy = myy + speedy / Math.abs(speedy);
         if(myy == _root.char[0])
         {
            shoot = 1;
         }
      }
   }
   if(shoot == 1)
   {
      _parent._x = _parent._x + speedx;
      if(_parent._x < 0 or _parent._x > 600)
      {
         _parent._x = myx * _root.tilewidth;
         shoot = 0;
      }
   }
}
