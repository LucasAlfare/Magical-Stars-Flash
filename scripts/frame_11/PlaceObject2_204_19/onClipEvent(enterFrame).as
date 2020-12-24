onClipEvent(enterFrame){
   if(_root.timeleft > 0)
   {
      _root.timeleft = 25 - (int(getTimer() / 1000) - timestart);
      if(_root.timeleft <= 0)
      {
         _parent.but._visible = true;
      }
   }
}
