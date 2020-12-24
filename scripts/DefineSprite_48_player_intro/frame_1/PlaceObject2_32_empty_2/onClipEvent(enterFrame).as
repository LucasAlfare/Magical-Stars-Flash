onClipEvent(enterFrame){
   if(status eq "standing")
   {
      if(_parent._parent._parent.map[_parent._parent._parent.char[0] + 1][_parent._parent._parent.char[1]] == 0)
      {
         speedy = s * 2;
         speedx = 0;
         status = "moving";
      }
      else if(Key.isDown(38) and _parent._parent._parent.map[_parent._parent._parent.char[0]][_parent._parent._parent.char[1]] > 0)
      {
         if(Key.isDown(38) and _parent._parent._parent.map[_parent._parent._parent.char[0]][_parent._parent._parent.char[1]] != 21)
         {
            _parent.gotoAndPlay("up");
            status = "moving";
            speedy = - s;
            speedx = 0;
         }
      }
      else if(Key.isDown(40) and _parent._parent._parent.map[_parent._parent._parent.char[0] + 1][_parent._parent._parent.char[1]] > 0)
      {
         if(Key.isDown(40) and _parent._parent._parent.map[_parent._parent._parent.char[0] + 1][_parent._parent._parent.char[1]] != 20)
         {
            _parent.gotoAndPlay("up");
            speedy = s;
            speedx = 0;
            status = "moving";
         }
      }
      else if(Key.isDown(37) and _parent._parent._parent.map[_parent._parent._parent.char[0]][_parent._parent._parent.char[1] - 1] != 20)
      {
         if(_parent._parent._parent.char[1] > 0)
         {
            _parent.gotoAndPlay("left");
            status = "moving";
            speedy = 0;
            speedx = - s;
         }
      }
      else if(Key.isDown(39) and _parent._parent._parent.map[_parent._parent._parent.char[0]][_parent._parent._parent.char[1] + 1] != 20)
      {
         if(_parent._parent._parent.char[1] < 16)
         {
            _parent.gotoAndPlay("right");
            status = "moving";
            speedy = 0;
            speedx = s;
         }
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
            _parent._parent._parent.char[1] = _parent._parent._parent.char[1] + speedx / Math.abs(speedx);
         }
         if(speedy != 0)
         {
            _parent._parent._parent.char[0] = _parent._parent._parent.char[0] + speedy / Math.abs(speedy);
         }
      }
   }
}
