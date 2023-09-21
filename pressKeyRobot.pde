import java.awt.Robot;
import java.awt.event.KeyEvent;
import java.io.IOException;

Robot robot;

void setup(){
    size(500,500);
    background(0);

    try {
        robot = new Robot();
    } catch(Exception e) {
        e.printStackTrace();
    }
}

void draw(){
    delay(1000);

    switch ((int)random(3)){
        case 0:
            robot.keyPress(KeyEvent.VK_A);
            robot.keyRelease(KeyEvent.VK_A);
            break;
        case 1:
            robot.keyPress(KeyEvent.VK_B);
            robot.keyRelease(KeyEvent.VK_B);
            break;
        case 2:
            robot.keyPress(KeyEvent.VK_C);
            robot.keyRelease(KeyEvent.VK_C);
            break;
    }
}
