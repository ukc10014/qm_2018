int show_img = 0; //Sketch only starts drawing when this is 1

int num_searches = 26;
String[] searchTerm = new String[num_searches]; //Number of terms
String[][] substr = new String[num_searches][]; //Substrings of given searchstring
int searchCount=0,wordCount=0; //Counters for parsing & displaying the string
PFont useFont,useFont2,useFont3;

//Location of text
int text_x,text_y;

//Delay stuff to make text legible
int t_delay = 300; //1ms hold for each text
int t_prev; //Time of previous write to screen

void setup() {
  size(1920,1080);
  colorMode(HSB,360,100,100,100);
  
  //Assign font
  //useFont = createFont("Futura",64);
    //useFont = createFont("GT-Eesti-Pro-Text-Trial-Regular",64);
  //textFont(useFont);
  
  //useFont2 = createFont("GT-Eesti-Pro-Text-Trial-Regular.otf",64);
  //textFont(useFont2);

  //useFont3 = createFont("GT-Eesti-Pro-Text-Trial-Medium-Italic.otf",64);
  //useFont3 = createFont("GT-Eesti-Pro-Text-Trial-Regular.otf",64);
  //useFont3 = createFont("GT-Eesti-Text-Regular.otf",64);
  useFont3 = createFont("Futura",64);
  textFont(useFont3);fill(120,0,100);
  //useFont3 = createFont("Futura",64);
  //textFont(useFont2);


  //Assign searchTerm
  searchTerm[4] = "hyacinth";
  searchTerm[1] = "agate beryl rubis tourmaline amethyste opale topaze corindon turquoise";
  searchTerm[2] = "gerboise jerboa";
  searchTerm[3] = "ivy";
//  searchTerm[4] = "kapustnik cabbage";
  searchTerm[0] = "капустник cabbage";
  searchTerm[5] = "курьер courier";
  searchTerm[6] = "лягушка frog";
  searchTerm[7] = "mария";
  searchTerm[8] = "молодец good sport";
  searchTerm[9] = "shrimp";
  searchTerm[10] = "солнцепёк sun heat";
  searchTerm[11] = "apache dakota romeo bravo cherokee item aztec zuni";
  searchTerm[12] = "топол white poplar";
  searchTerm[13] = "тюльпан tulip";
  searchTerm[14] = "улыбка smile";
  searchTerm[15] = "журавлик crane";
  searchTerm[16] = "canopus aldebaran tamoure ganymede";
  searchTerm[17] = "betelguese rigel sirus altair antares arcturus capella";
  searchTerm[18] = "castor pollux canopus procyon andromede cassiopee";
  searchTerm[19] = "dragon eridan licorne pegase orion toucan"; 
  searchTerm[20] = "flagpole grapple antler mosaic";
  searchTerm[21] = "swordfish bluegill kingfish";
  searchTerm[22] = "mohawk frigate bird aztec harlem orange checkmate starfish";
  searchTerm[23] = "ласка tenderness";
  searchTerm[24] = "persee achille hector patrocle menelas astanax nestor ulysse oedipe andromaque ajax oreste hecube";
  searchTerm[25] = "priam eteocle egisthe atree thesee pelops chryses laerte diomede agenor";
  
  for(int l=0;l<searchTerm.length;l++) {
    substr[l] = splitTokens(searchTerm[l]);
    //print(l+" "+substr[l][0]+" "+substr[l][substr[l].length-1]+" \n");
  }
  
 

  //Jump to desired spot
  /*
  for(int j=0;j<n_screens;j++) {
    myMovie[j].jump(random(0,myMovie[j].duration()));
    myMovie[j].loop();
    print(j+" "+myMovie[j].duration()+"\n");
    //myMovie[j].play();
  }
  */
 
   //Initialise location for text
  text_x = int(width*.5);
  text_y = int(height*.5);
  
  //Timestamp for leaving setup
  t_prev = millis();
}

 

void draw() {
if(show_img == 1) {
  /*Only execute draw if enclosing javascript from webpage sets the flag*/
  
  background(0,100,100); //Gray, alpha
  
    if(searchCount<searchTerm.length) {
          if(wordCount<substr[searchCount].length) {
            background(0,100,100);
              switch(searchCount % 4) {
                case 0:
                   //text_x = int(width/1.3);text_y = height/2;
                   text_x = int(width/11);text_y = height/11;
                   break;
                case 1:
                  //text_x = int(width/2.5);text_y = int(height/1.3);
                  text_x = int(width/7);text_y = int(height/7);
                  break;
                  
                case 2:
                  //text_x = 100;text_y = height/2;
                  text_x = int(width/3);text_y = int(height/3);
                  break;
                  
                case 3:
                  //text_x = int(width/2.5);text_y = height - int(height/1.3);
                  text_x = int(width/2);text_y = int(height/2);
                  break;
                
                default:
                  print("ERROR in parsing search string!!!");
              }
              text(substr[searchCount][wordCount],text_x,text_y);
              wordCount++;
          } else {
            searchCount++;
            wordCount=0;
          }
    } else {
      set_flag(1);
      exit();
    }
        
  
    t_prev = millis(); //Set t_prev to current time
    while(millis()<t_prev+t_delay) {
      //print(t_prev+" "+millis());
    }
      }
}
      
void set_flag(int f) {
  show_img = f;
}
    