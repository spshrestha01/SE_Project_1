package Controller;

import javax.json.JsonArray;
import javax.json.JsonObject;
import javax.json.JsonValue;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class OnsiteRemoteJob {
    public HashMap<String, String> map16Onsite = new HashMap<String, String>();
    public HashMap<String, String> map16Remote = new HashMap<String, String>();
    public HashMap<String, String> map17Onsite = new HashMap<String, String>();
    public HashMap<String, String> map17Remote = new HashMap<String, String>();
    public HashMap<String, String> map18Onsite = new HashMap<String, String>();
    public HashMap<String, String> map18Remote = new HashMap<String, String>();

    public HashMap[] getOnsiteRemoteData(){
        ApplicationData applicationData = new ApplicationData();
        JsonObject hackeNewsData = applicationData.getHackerNewsData();
        JsonArray hackerNewsArrayData = hackeNewsData.getJsonArray("hits");

        for(JsonValue onsiteRemoteHits : hackerNewsArrayData){
            String storyId = onsiteRemoteHits.asJsonObject().getString("objectID");
            String[] onsiteRemoteData = getOnsiteRemoteCommentsFromStory(storyId);

            String dateString = onsiteRemoteHits.asJsonObject().getString("created_at");
            String dateSplit[] = dateString.split("-");
            String year = dateSplit[0];
            String month = dateSplit[1];

            if(Integer.parseInt(year) == 2016){
                switch (Integer.parseInt(month)){
                    case 2:
                        map16Onsite.put("Feb", onsiteRemoteData[0]);
                        map16Remote.put("Feb", onsiteRemoteData[1]);
                        break;

                    case 3:
                        map16Onsite.put("Mar", onsiteRemoteData[0]);
                        map16Remote.put("Mar", onsiteRemoteData[1]);
                        break;

                    case 4:
                        map16Onsite.put("Apr", onsiteRemoteData[0]);
                        map16Remote.put("Apr", onsiteRemoteData[1]);
                        break;

                    case 5:
                        map16Onsite.put("May", onsiteRemoteData[0]);
                        map16Remote.put("May", onsiteRemoteData[1]);
                        break;

                    case 6:
                        map16Onsite.put("Jun", onsiteRemoteData[0]);
                        map16Remote.put("Jun", onsiteRemoteData[1]);
                        break;

                    case 7:
                        map16Onsite.put("Jul", onsiteRemoteData[0]);
                        map16Remote.put("Jul", onsiteRemoteData[1]);
                        break;

                    case 8:
                        map16Onsite.put("Aug", onsiteRemoteData[0]);
                        map16Remote.put("Aug", onsiteRemoteData[1]);
                        break;

                    case 9:
                        map16Onsite.put("Sep", onsiteRemoteData[0]);
                        map16Remote.put("Sep", onsiteRemoteData[1]);
                        break;

                    case 10:
                        map16Onsite.put("Oct", onsiteRemoteData[0]);
                        map16Remote.put("Oct", onsiteRemoteData[1]);
                        break;

                    case 11:
                        map16Onsite.put("Nov", onsiteRemoteData[0]);
                        map16Remote.put("Nov", onsiteRemoteData[1]);
                        break;

                    case 12:
                        map16Onsite.put("Dec", onsiteRemoteData[0]);
                        map16Remote.put("Dec", onsiteRemoteData[1]);
                        break;

                    default:
                        map16Onsite.put("","");
                        map16Remote.put("","");
                        break;
                }

            }else if(Integer.parseInt(year) == 2017){
                switch (Integer.parseInt(month)){
                    case 1:
                        map17Onsite.put("Jan", onsiteRemoteData[0]);
                        map17Remote.put("Jan", onsiteRemoteData[1]);
                        break;
                    case 2:
                        map17Onsite.put("Feb", onsiteRemoteData[0]);
                        map17Remote.put("Feb", onsiteRemoteData[1]);
                        break;

                    case 3:
                        map17Onsite.put("Mar", onsiteRemoteData[0]);
                        map17Remote.put("Mar", onsiteRemoteData[1]);
                        break;

                    case 4:
                        map17Onsite.put("Apr", onsiteRemoteData[0]);
                        map17Remote.put("Apr", onsiteRemoteData[1]);
                        break;

                    case 5:
                        map17Onsite.put("May", onsiteRemoteData[0]);
                        map17Remote.put("May", onsiteRemoteData[1]);
                        break;

                    case 6:
                        map17Onsite.put("Jun", onsiteRemoteData[0]);
                        map17Remote.put("Jun", onsiteRemoteData[1]);
                        break;

                    case 7:
                        map17Onsite.put("Jul", onsiteRemoteData[0]);
                        map17Remote.put("Jul", onsiteRemoteData[1]);
                        break;

                    case 8:
                        map17Onsite.put("Aug", onsiteRemoteData[0]);
                        map17Remote.put("Aug", onsiteRemoteData[1]);
                        break;

                    case 9:
                        map17Onsite.put("Sep", onsiteRemoteData[0]);
                        map17Remote.put("Sep", onsiteRemoteData[1]);
                        break;

                    case 10:
                        map17Onsite.put("Oct", onsiteRemoteData[0]);
                        map17Remote.put("Oct", onsiteRemoteData[1]);
                        break;

                    case 11:
                        map17Onsite.put("Nov", onsiteRemoteData[0]);
                        map17Remote.put("Nov", onsiteRemoteData[1]);
                        break;

                    case 12:
                        map17Onsite.put("Dec", onsiteRemoteData[0]);
                        map17Remote.put("Dec", onsiteRemoteData[1]);
                        break;

                    default:
                        map17Onsite.put("","0");
                        map17Remote.put("","0");
                        break;
                }

            }else{
                switch (Integer.parseInt(month)){
                    case 1:
                        map18Onsite.put("Jan", onsiteRemoteData[0]);
                        map18Remote.put("Jan", onsiteRemoteData[1]);
                        break;

                    case 2:
                        map18Onsite.put("Feb", onsiteRemoteData[0]);
                        map18Remote.put("Feb", onsiteRemoteData[1]);
                        break;

                    default:
                        map17Onsite.put("","0");
                        map17Remote.put("","0");
                        break;
                }
            }
        }

        HashMap[] hashMapArray = {map16Onsite, map16Remote, map17Onsite, map17Remote, map18Onsite, map18Remote};
        return  hashMapArray;
    }

    public String[] getOnsiteRemoteCommentsFromStory(String storyId){
        String[] onsiteRemoteStringArray = new String[2];
        int onsiteCounter = 0;
        int remoteCounter = 0;
        List<String> keywords = new ArrayList<String>();
        keywords.add("onsite");
        keywords.add("remote");
        ApplicationData applicationData = new ApplicationData();
        JsonObject onsiteRemoteComments = applicationData.getCommentsFromStory(storyId);
        JsonArray onsiteRemoteArray = onsiteRemoteComments.getJsonArray("hits");
        for(JsonValue commentHits : onsiteRemoteArray){
            JsonValue comment = commentHits.asJsonObject().getValue("/comment_text");
            for(String word : keywords){
                if(comment.toString().toLowerCase().contains(word)){
                    if(word == "onsite"){
                        onsiteCounter ++;
                    }else{
                        remoteCounter ++;
                    }
                }
            }
        }
        onsiteRemoteStringArray[0] = Integer.toString(onsiteCounter);
        onsiteRemoteStringArray[1] = Integer.toString(remoteCounter);

        return onsiteRemoteStringArray;
    }
}
