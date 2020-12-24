onClipEvent(enterFrame){
   if(_root.cont.player.hitTest(_parent))
   {
      _root.cont.player.brain.status = "dead";
   }
   if(status eq "standing")
   {
      if(speedx == - s)
      {
         if(random(10) > 7 and _root.map[myy - 1][myx] < 10 and _root.map[myy - 1][myx] > 0)
         {
            status = "up";
         }
         else if(random(10) > 7 and _root.map[myy + 1][myx] < 10 and _root.map[myy + 1][myx] > 0)
         {
            status = "down";
         }
         else if(_root.map[myy][myx - 1] < 20 and _root.map[myy + 1][myx - 1] > 0)
         {
            status = "left";
         }
         else
         {
            status = "right";
         }
      }
      else if(speedx == s)
      {
         if(random(10) > 7 and _root.map[myy - 1][myx] < 10 and _root.map[myy - 1][myx] > 0)
         {
            status = "up";
         }
         else if(random(10) > 7 and _root.map[myy + 1][myx] < 10 and _root.map[myy + 1][myx] > 0)
         {
            status = "down";
         }
         else if(_root.map[myy][myx + 1] < 20 and _root.map[myy + 1][myx + 1] > 0)
         {
            status = "right";
         }
         else
         {
            status = "left";
         }
      }
      else if(speedy == - s)
      {
         if(_root.map[myy][myx] < 10 and _root.map[myy][myx] > 0)
         {
            status = "up";
         }
         else if(myx < _root.char[1])
         {
            status = "right";
         }
         else
         {
            status = "left";
         }
      }
      else if(speedy == s)
      {
         if(_root.map[myy + 1][myx] < 10 and _root.map[myy + 1][myx] > 0)
         {
            status = "down";
         }
         else if(myx < _root.char[1])
         {
            status = "right";
         }
         else
         {
            status = "left";
         }
      }
      if(status == "left")
      {
         _parent.gotoAndPlay("left");
         status = "moving";
         speedx = - s;
         speedy = 0;
      }
      else if(status == "right")
      {
         _parent.gotoAndPlay("right");
         status = "moving";
         speedx = s;
         speedy = 0;
      }
      else if(status == "up")
      {
         _parent.gotoAndPlay("up");
         status = "moving";
         speedx = 0;
         speedy = - s;
      }
      else if(status == "down")
      {
         _parent.gotoAndPlay("up");
         status = "moving";
         speedx = 0;
         speedy = s;
      }
   }
   if(status eq "moving")
   {
      _parent._x = _parent._x + speedx;
      _parent._y = _parent._y + speedy;
      count = count + Math.abs(speedy + speedx);
      if(count >= 20)
      {
         status = "standing";
         count = 0;
         if(speedx != 0)
         {
            myx = myx + speedx / Math.abs(speedx);
         }
         if(speedy != 0)
         {
            myy = myy + speedy / Math.abs(speedy);
         }
      }
   }
}
