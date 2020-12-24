onClipEvent(load){
   timestart = int(getTimer() / 1000);
   _parent.but._visible = false;
   _root.timeleft = 25 - (int(getTimer() / 1000) - timestart);
}
