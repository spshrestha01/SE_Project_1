package Controller;

import javax.json.JsonArray;
import javax.json.JsonObject;
import javax.json.JsonValue;
import java.util.HashMap;

public class JobPosting {

    HashMap<String, String> map16JobPosting = new HashMap<String, String>();
    HashMap<String, String> map17JobPosting = new HashMap<String, String>();
    HashMap<String, String> map18JobPosting = new HashMap<String, String>();

    public HashMap[] getJopPostingData(){
        ApplicationData applicationData = new ApplicationData();
        JsonObject jobPostingJsonObjeect = applicationData.getHackerNewsData();
        JsonArray hackerNewsJsonArray = jobPostingJsonObjeect.getJsonArray("hits");
        for(JsonValue jobPostHits: hackerNewsJsonArray){
            String storyId = jobPostHits.asJsonObject().getString("objectID");
            String numberOfJobPosts = getJobPostFromStoryComments(storyId);
            String dateString = jobPostHits.asJsonObject().getString("created_at");
            String dateSplit[] = dateString.split("-");
            String year = dateSplit[0];
            String month = dateSplit[1];
            if(Integer.parseInt(year) == 2016){
                switch (Integer.parseInt(month)){
                    case 2:
                        map16JobPosting.put("Feb", numberOfJobPosts);
                        break;
                    case 3:
                        map16JobPosting.put("Mar", numberOfJobPosts);

                        break;

                    case 4:
                        map16JobPosting.put("Apr", numberOfJobPosts);
                        break;

                    case 5:
                        map16JobPosting.put("May", numberOfJobPosts);
                        break;

                    case 6:
                        map16JobPosting.put("Jun", numberOfJobPosts);
                        break;

                    case 7:
                        map16JobPosting.put("Jul", numberOfJobPosts);
                        break;

                    case 8:
                        map16JobPosting.put("Aug", numberOfJobPosts);
                        break;

                    case 9:
                        map16JobPosting.put("Sep", numberOfJobPosts);
                        break;

                    case 10:
                        map16JobPosting.put("Oct", numberOfJobPosts);
                        break;

                    case 11:
                        map16JobPosting.put("Nov", numberOfJobPosts);
                        break;

                    case 12:
                        map16JobPosting.put("Dec", numberOfJobPosts);
                        break;

                    default:
                        map16JobPosting.put("","");
                        break;

                }

            }else if(Integer.parseInt(year) == 2017){
                switch (Integer.parseInt(month)){
                    case 1:
                        map17JobPosting.put("Jan", numberOfJobPosts);
                        break;
                    case 2:
                        map17JobPosting.put("Feb", numberOfJobPosts);
                        break;

                    case 3:
                        map17JobPosting.put("Mar", numberOfJobPosts);
                        break;

                    case 4:
                        map17JobPosting.put("Apr", numberOfJobPosts);
                        break;

                    case 5:
                        map17JobPosting.put("May", numberOfJobPosts);
                        break;

                    case 6:
                        map17JobPosting.put("Jun", numberOfJobPosts);
                        break;

                    case 7:
                        map17JobPosting.put("Jul", numberOfJobPosts);
                        break;

                    case 8:
                        map17JobPosting.put("Aug", numberOfJobPosts);
                        break;

                    case 9:
                        map17JobPosting.put("Sep", numberOfJobPosts);
                        break;

                    case 10:
                        map17JobPosting.put("Oct", numberOfJobPosts);
                        break;

                    case 11:
                        map17JobPosting.put("Nov", numberOfJobPosts);
                        break;

                    case 12:
                        map17JobPosting.put("Dec", numberOfJobPosts);
                        break;

                    default:
                        map17JobPosting.put("","0");
                        break;
                }
            }else{

                switch (Integer.parseInt(month)){
                    case 1:
                        map18JobPosting.put("Jan", numberOfJobPosts);
                        break;

                    case 2:
                        map18JobPosting.put("Feb", numberOfJobPosts);
                        break;

                    default:
                        map18JobPosting.put("","0");
                        break;
                }
            }
        }

        HashMap[] hashMapsArray = {map16JobPosting, map17JobPosting, map18JobPosting};
        return hashMapsArray;
    }

    public String getJobPostFromStoryComments(String storyId){
        int numOfJobComments = 0;
        ApplicationData applicationData = new ApplicationData();
        JsonObject jobPostJsonObj = applicationData.getCommentsFromStory(storyId);
        JsonArray jobPostArray = jobPostJsonObj.getJsonArray("hits");
        numOfJobComments = jobPostArray.size();
        return Integer.toString(numOfJobComments);
    }
}


