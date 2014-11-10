   // based off code from Karla's midterm; I added notes, etc.
   
   
   
   // this pulls files from data folder
   // i don't need to have folders, it just needs to read the feeds from the arduino
    int start1955Index = 59; 
    int start1960Index = 99;  
    int start1970Index = 118;
    int start1990Index = 135;

  // i have to replace content within [] with the arduino feed
if ( alphas[ start1990Index ] >= 255 ){
              text("+1991-present", 10, 600);
        
        
      // for the other distances the arduino feed is measuring
     }else if( alphas[ start1970Index ] >= 255 ){
              text("+1971-1990", 10, 600);
     }else if( alphas[ start1960Index ] >= 255 ){
              text("+1961-1970", 10, 600);
     }else if( alphas[ start1955Index ] >= 255 ){
              text("+1955-1960", 10, 600);
}

else{
        text("+1945-1950", 10, 600);
   }
  
}
