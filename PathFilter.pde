import processing.net.*;
import java.util.List;

//PImage img;
int num;
List<File> folders = new ArrayList();
int getNumDataFolders() {
  int count = 0;
  for ( File f : dataFile("c:/users/").listFiles() ) {
        if (f.isDirectory()) {
      
      folders.add(f);
      ++count;
    }else{
    //img = loadImage(f.getName());
    }
  }
  
  return count;
}

void setup() {
  size(400,400); 
  num = getNumDataFolders();
 
  
}

void draw(){
 println(num, folders);
}