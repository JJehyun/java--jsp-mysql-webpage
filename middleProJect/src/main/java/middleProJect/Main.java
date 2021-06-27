package middleProJect;

import java.io.FileInputStream;
import java.io.FileNotFoundException;

import javazoom.jl.decoder.JavaLayerException;
import javazoom.jl.player.Player;

import java.util.Scanner;

class Music extends Thread{

        public void run(){


                try {
                        FileInputStream fileInputStream = new FileInputStream("C:/MP3/GoodDay.mp3");
                        Player player = new Player(fileInputStream);
                        player.play();

                }catch(FileNotFoundException e) {
                    e.printStackTrace();
                }catch(JavaLayerException e) {
                    e.printStackTrace();
                }

        }   

}

public class Main {
	Music music = new Music();
	
    public void start () {
        music.start();

    }
    
	
    public void restart () {
        music.resume();

    }
    
    public void end () {


        music.suspend();

    }
    

}


