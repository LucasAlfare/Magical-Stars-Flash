onClipEvent(enterFrame){
   if(status eq "standing")
   {
      if(_root.map[_root.char[0] + 1][_root.char[1]] == 0 or _root.map[_root.char[0] + 1][_root.char[1]] == 10 or _root.map[_root.char[0] + 1][_root.char[1]] == 11)
      {
         speedy = s * 2;
         speedx = 0;
         status = "moving";
      }
      else if(Key.isDown(38) and _root.map[_root.char[0]][_root.char[1]] > 0 and _root.map[_root.char[0]][_root.char[1]] < 10)
      {
         _parent.gotoAndPlay("up");
         status = "moving";
         speedy = - s;
         speedx = 0;
      }
      else if(Key.isDown(40) and _root.map[_root.char[0] + 1][_root.char[1]] > 0 and _root.map[_root.char[0] + 1][_root.char[1]] < 20)
      {
         _parent.gotoAndPlay("up");
         speedy = s;
         speedx = 0;
         status = "moving";
      }
      else if(Key.isDown(37) and _root.map[_root.char[0]][_root.char[1] - 1] < 20 and _root.char[1] - 1 > -1)
      {
         _parent.gotoAndPlay("left");
         status = "moving";
         speedy = 0;
         speedx = - s;
      }
      else if(Key.isDown(39) and _root.map[_root.char[0]][_root.char[1] + 1] < 20 and _root.char[1] + 1 < 30)
      {
         _parent.gotoAndPlay("right");
         status = "moving";
         speedy = 0;
         speedx = s;
      }
   }
   if(status eq "moving")
   {
      _root.cont.player._x = _root.cont.player._x + speedx;
      _root.cont.player._y = _root.cont.player._y + speedy;
      count = count + Math.abs(speedy + speedx);
      if(count >= 20)
      {
         status = "standing";
         count = 0;
         if(speedx != 0)
         {
            _root.char[1] = _root.char[1] + speedx / Math.abs(speedx);
         }
         if(speedy != 0)
         {
            _root.char[0] = _root.char[0] + speedy / Math.abs(speedy);
         }
         if(_root.map[_root.char[0]][_root.char[1]] == 10)
         {
            _root.map[_root.char[0]][_root.char[1]] = 0;
            name = "t" + _root.char[1] + "_" + _root.char[0];
            _root.cont[name].swapDepths(10000 + _root.char[0] * 100 + _root.char[1]);
            _root.punkt = _root.punkt + 10;
            _root.cont[name].raha.play();
            _root.totalfound = _root.totalfound + 1;
            if(_root.totalfound == _root.totals)
            {
               _root.gotoandStop(4);
            }
         }
         if(_root.map[_root.char[0]][_root.char[1]] == 11)
         {
            _root.map[_root.char[0]][_root.char[1]] = 0;
            name = "t" + _root.char[1] + "_" + _root.char[0];
            _root.cont[name].swapDepths(10000 + _root.char[0] * 100 + _root.char[1]);
            _root.punkt = _root.punkt + 50;
            _root.cont[name].raha.play();
         }
         if(_root.map[_root.char[0] + 1][_root.char[1]] == 21)
         {
            name = "t" + _root.char[1] + "_" + (_root.char[0] + 1);
            _root.cont[name].t.wall.play();
         }
      }
   }
   if(random(100) > 98)
   {
      bonusx = random(_root.map[0].length);
      bonusy = random(_root.map.length);
      if(_root.map[bonusy][bonusx] == 0 and _root.map[bonusy + 1][bonusx] == 20 and bonusy != _root.char[1] and bonusx != _root.char[0])
      {
         _root.map[bonusy][bonusx] = 11;
         _root.createbonus(bonusx,bonusy);
      }
   }
   if(status eq "dead")
   {
      if(_parent._currentframe != 15)
      {
         _parent.gotoAndStop(15);
      }
      _parent._y = _parent._y + s * 2;
      if(_parent._y > 400)
      {
         _root.gotoAndStop(5);
      }
   }
}
