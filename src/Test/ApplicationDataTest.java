package Test;

import Controller.ApplicationData;
import com.sun.corba.se.spi.activation.Server;
import com.sun.research.ws.wadl.Response;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import javax.json.JsonArray;
import javax.json.JsonObject;
import javax.json.JsonValue;

import static org.junit.Assert.*;

public class ApplicationDataTest {

    @Test
    public void getHackerNewsData() {
        ApplicationData applicationData = new ApplicationData();
        JsonObject jsonObject = applicationData.getHackerNewsData();
        JsonValue jsonValueNbHits = jsonObject.getJsonNumber("nbHits");
        assertTrue(Integer.parseInt(jsonValueNbHits.toString()) == 25);
    }

    @Test
    public void getCommentsFromStory() {
        ApplicationData applicationData = new ApplicationData();
        JsonObject jsonObject = applicationData.getCommentsFromStory("16282819");
        JsonArray jsonArray = jsonObject.getJsonArray("hits");
        String title = jsonArray.getJsonObject(0).getString("story_title");
        CharSequence expectedTitle = "Ask HN: Who is hiring? (February 2018)";
        assertTrue(title.contentEquals(expectedTitle));

    }
}