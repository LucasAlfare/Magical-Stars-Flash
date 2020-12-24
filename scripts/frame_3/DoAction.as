function do_map()
{
   if(_root.level % 2 == 0)
   {
      back.gotoAndStop(2);
   }
   _root.totalfound = 0;
   _root.map = new Array();
   y = 0;
   while(y < eval("_root.map" + _root.level).length)
   {
      _root.map[y] = new Array();
      x = 0;
      while(x < eval("_root.map" + _root.level)[0].length)
      {
         _root.map[y][x] = eval("_root.map" + _root.level)[y][x];
         x++;
      }
      y++;
   }
   y = 0;
   while(y < map.length)
   {
      x = 0;
      while(x < map[0].length)
      {
         name = "t" + x + "_" + y;
         _root.cont.attachMovie("tile",name,y * 100 + x);
         _root.cont[name]._x = tilewidth * x;
         _root.cont[name]._y = tileheight * y;
         _root.cont[name].gotoAndStop(map[y][x]);
         if(_root.level % 2 == 0)
         {
            _root.cont[name].t.gotoAndStop(2);
         }
         if(map[y][x] == 21)
         {
            _root.cont[name].t.wall.y = y;
            _root.cont[name].t.wall.x = x;
         }
         x++;
      }
      y++;
   }
}
function createbonus(x, y)
{
   name = "t" + x + "_" + y;
   _root.cont.attachMovie("tile",name,y * 100 + x);
   _root.cont[name]._x = tilewidth * x;
   _root.cont[name]._y = tileheight * y;
   _root.cont[name].gotoAndStop(11);
}
_root.attachMovie("empty","cont",1);
_root.cont._y = tileheight;
_root.attachMovie("frame","frame",999999);
do_map();
totals = 16;
char = [1,1];
_root.cont.attachMovie("player","player",tilewidth + tileheight * 100);
_root.cont.player._x = char[1] * tilewidth;
_root.cont.player._y = char[0] * tileheight;
smartenemy = eval("_root.smartenemy" + _root.level);
z = 0;
while(z < smartenemy.length)
{
   name = "smartenemy" + z;
   _root.cont.attachMovie("smartenemy",name,tilewidth + tileheight * 100 + z + 10);
   _root.cont[name]._x = smartenemy[z][1] * tilewidth;
   _root.cont[name]._y = smartenemy[z][0] * tilewidth;
   z++;
}
enemy = eval("_root.enemy" + _root.level);
z = 0;
while(z < enemy.length)
{
   name = "enemy" + z;
   _root.cont.attachMovie("enemy",name,tilewidth + tileheight * 100 + z + 1);
   _root.cont[name]._x = enemy[z][1] * tilewidth;
   _root.cont[name]._y = enemy[z][0] * tilewidth;
   z++;
}
cannon = eval("_root.cannon" + _root.level);
z = 0;
while(z < cannon.length)
{
   name = "cannon" + z;
   _root.cont.attachMovie("cannon",name,tilewidth + tileheight * 100 + z + 20);
   _root.cont[name]._x = cannon[z][1] * tilewidth;
   _root.cont[name]._y = cannon[z][0] * tilewidth;
   z++;
}
stop();
