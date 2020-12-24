removeMovieClip("cont");
removeMovieClip("frame");
_root.level = _root.level + 1;
totalfound = 0;
if(_root.level > _root.totallevels)
{
   gotoAndStop(6);
}
if(_root.level % 3 == 0 and _root.ads.length > 0)
{
   gotoAndStop(10);
}
else if(_root.level % 3 == 1)
{
   gotoAndStop(11);
}
stop();
