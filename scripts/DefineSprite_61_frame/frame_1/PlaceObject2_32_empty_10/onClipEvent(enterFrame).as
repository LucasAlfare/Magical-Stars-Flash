onClipEvent(enterFrame){
   if(getTimer() / 100 - time > 1)
   {
      time = getTimer() / 100;
      if(_parent.punkt < _root.punkt)
      {
         _parent.punkt = _parent.punkt + 1;
      }
   }
}
