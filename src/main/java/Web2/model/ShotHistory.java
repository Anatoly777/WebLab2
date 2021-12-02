package Web2.model;

import javax.servlet.http.HttpSession;
import java.util.LinkedList;

public class ShotHistory {
    private final LinkedList<Shot> history;

    public static ShotHistory readFromSession(HttpSession session, String attribute){
        Object attr = session.getAttribute(attribute);
        if (attr == null){
            return new ShotHistory();
        }
        else{
            return (ShotHistory) attr;
        }
    }

    public ShotHistory(){
        this.history = new LinkedList<>();
    }

    public void pushShot(Shot shot){
        this.history.add(0,shot);
    }

    public LinkedList<Shot> getHistory(){
        return history;
    }

}