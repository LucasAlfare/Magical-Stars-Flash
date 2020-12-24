removeMovieClip("cont");
removeMovieClip("frame");
_root.lives = _root.lives - 1;
if(_root.lives == 0)
{
   nextFrame();
}
stop();
