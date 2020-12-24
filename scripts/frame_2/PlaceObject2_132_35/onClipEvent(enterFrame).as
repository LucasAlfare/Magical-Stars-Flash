onClipEvent(enterFrame){
   if(this.hitTest(_root._xmouse,_root._ymouse,true) and _currentframe == 1)
   {
      gotoAndPlay(1);
   }
   if(this.hitTest(_root._xmouse,_root._ymouse,true) and _currentframe == 30)
   {
      gotoAndPlay(30);
   }
}
