onClipEvent(enterFrame){
   text = int(_parent.getBytesLoaded() / 1000) add " KBYTES  OF " add int(_parent.getBytesTotal() / 1000) add " LOADED ...";
   if(_parent.getBytesTotal() == _parent.getBytesLoaded())
   {
      _parent.gotoAndStop(2);
   }
}
