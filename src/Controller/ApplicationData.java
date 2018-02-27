package Controller;

import javax.json.JsonObject;
import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;

public class ApplicationData {

    public static String urlPath = "http://hn.algolia.com/api/v1/";

    public JsonObject getHackerNewsData(){
        String queryPath = "search_by_date?query=Ask%20HN:%20Who%20is%20Hiring?&tags=author_whoishiring&numericFilters=created_at_i%3E1454284799,created_at_i%3C1519776000&hitsPerPage=25";
        JsonObject hackerNewsData = JsonObject.EMPTY_JSON_OBJECT;
        try{
            Client client = ClientBuilder.newClient();
            WebTarget target = client.target(urlPath + queryPath);
            hackerNewsData = target.request(MediaType.APPLICATION_JSON_TYPE).get(JsonObject.class);
        }catch (Exception ex){
            System.out.println(ex);
        }
        return hackerNewsData;
    }


    public JsonObject getCommentsFromStory(String storyId){
        JsonObject storyCommentData = JsonObject.EMPTY_JSON_OBJECT;
        String queryPath = "search_by_date?query=Jobs%20Posting&tags=(story_"+storyId+")";
        try{
            Client client = ClientBuilder.newClient();
            WebTarget target = client.target(urlPath + queryPath);
            storyCommentData = target.request(MediaType.APPLICATION_JSON_TYPE).get(JsonObject.class);
            Thread.sleep(200);
        }catch (Exception e){
            System.out.println(e);
        }
        return storyCommentData;
    }

}

