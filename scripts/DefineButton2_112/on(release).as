on(release){
   if(_currentframe == 6)
   {
      gotoAndStop(1);
   }
   else
   {
      gotoAndStop(_currentframe + 1);
   }
   frames = _currentframe + "/" + _totalframes;
}
