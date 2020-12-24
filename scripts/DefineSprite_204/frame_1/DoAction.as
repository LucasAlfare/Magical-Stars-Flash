function do_map()
{
   map = new Array();
   y = 0;
   while(y < _root.mapbonus.length)
   {
      map[y] = new Array();
      x = 0;
      while(x < _root.mapbonus[0].length)
      {
         map[y][x] = _root.mapbonus[y][x];
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
         cont.attachMovie("tile",name,y * 100 + x);
         cont[name]._x = tilewidth * x;
         cont[name]._y = tileheight * y;
         cont[name].gotoAndStop(map[y][x]);
         x++;
      }
      y++;
   }
}
tilewidth = 20;
tileheight = tilewidth;
do_map();
char = [0,8];
cont.attachMovie("player_intro","hero",tilewidth + tileheight * 100);
cont.hero._x = char[1] * tilewidth;
cont.hero._y = char[0] * tileheight;
