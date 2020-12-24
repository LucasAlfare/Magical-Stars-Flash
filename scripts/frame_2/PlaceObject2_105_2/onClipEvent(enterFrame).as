onClipEvent(enterFrame){
   if(_root._currentframe != 10)
   {
      this.showing = 0;
      if(_root.ads.length > 0)
      {
         if(_root.adstoshow.length == 0)
         {
            i = 0;
            while(i < _root.ads.length)
            {
               _root.adstoshow[i] = _root.ads[i];
               i++;
            }
         }
         ran = random(_root.adstoshow.length);
         link = _root.adstoshow[ran].link;
         url = _root.adstoshow[ran].url;
         ad.loadMovie(url);
         _root.adstoshow.splice(ran,1);
      }
      this._visible = false;
   }
   else if(this.showing == 0)
   {
      _parent.but._visible = false;
      timestart = int(getTimer() / 1000);
      this.showing = 1;
      this._visible = true;
   }
   else
   {
      _root.timeleft = 10 - (int(getTimer() / 1000) - timestart);
      if(_root.timeleft <= 0)
      {
         _root.timeleft = 0;
         _parent.but._visible = true;
      }
   }
}
