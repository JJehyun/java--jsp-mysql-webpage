package middleProJect;

import java.io.FileInputStream;
import javazoom.jl.player.Player;


public class Musicplay {

	Player playMP3;
	FileInputStream file;
    public void play(){
    	try {
    		FileInputStream file = new FileInputStream("C:/MP3/GoodDay.mp3");
    	    Player playMP3 = new Player(file);
    	    playMP3.play();
    	    
    	    }catch (Exception e) { System.out.println(e); }
    	
    		}
	

    public void stop(){
    	this.playMP3.close();
    }
    
    
    
    
}
