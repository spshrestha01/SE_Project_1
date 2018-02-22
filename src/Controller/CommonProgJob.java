package Controller;

import javax.json.JsonArray;
import javax.json.JsonObject;
import javax.json.JsonValue;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class CommonProgJob {

    public HashMap<String, String> map16Python = new HashMap<String, String>();
    public HashMap<String, String> map16Php = new HashMap<String, String>();
    public HashMap<String, String> map16Java = new HashMap<String, String>();
    public HashMap<String, String> map16Cpp= new HashMap<String, String>();
    public HashMap<String, String> map16CSharp = new HashMap<String, String>();
    public HashMap<String, String> map16JS = new HashMap<String, String>();
    public HashMap<String, String> map16Go = new HashMap<String, String>();
    public HashMap<String, String> map16Swift = new HashMap<String, String>();
    public HashMap<String, String> map16Ruby = new HashMap<String, String>();
    public HashMap<String, String> map16Arduino = new HashMap<String, String>();

    public HashMap<String, String> map17Python = new HashMap<String, String>();
    public HashMap<String, String> map17Php = new HashMap<String, String>();
    public HashMap<String, String> map17Java = new HashMap<String, String>();
    public  HashMap<String, String> map17Cpp= new HashMap<String, String>();
    public HashMap<String, String> map17CSharp = new HashMap<String, String>();
    public  HashMap<String, String> map17JS = new HashMap<String, String>();
    public HashMap<String, String> map17Go = new HashMap<String, String>();
    public  HashMap<String, String> map17Swift = new HashMap<String, String>();
    public  HashMap<String, String> map17Ruby = new HashMap<String, String>();
    public  HashMap<String, String> map17Arduino = new HashMap<String, String>();

    public   HashMap<String, String> map18Python = new HashMap<String, String>();
    public  HashMap<String, String> map18Php = new HashMap<String, String>();
    public  HashMap<String, String> map18Java = new HashMap<String, String>();
    public HashMap<String, String> map18Cpp= new HashMap<String, String>();
    public  HashMap<String, String> map18CSharp = new HashMap<String, String>();
    public  HashMap<String, String> map18JS = new HashMap<String, String>();
    public HashMap<String, String> map18Go = new HashMap<String, String>();
    public HashMap<String, String> map18Swift = new HashMap<String, String>();
    public HashMap<String, String> map18Ruby = new HashMap<String, String>();
    public  HashMap<String, String> map18Arduino = new HashMap<String, String>();

    public HashMap[] getHackerNewsDataForCommonJobs(){
        ApplicationData applicationData = new ApplicationData();
        JsonObject progJsonObject = applicationData.getHackerNewsData();
        JsonArray progJobJsonArray = progJsonObject.getJsonArray("hits");

        for (JsonValue progJobJsonValue: progJobJsonArray) {

            String storyId = progJobJsonValue.asJsonObject().getString("objectID");
            String[] programmingJobData = getProgrammingJobData(storyId);

            String dateString = progJobJsonValue.asJsonObject().getString("created_at");
            String dateSplit[] = dateString.split("-");
            String year = dateSplit[0];
            String month = dateSplit[1];

            if(Integer.parseInt(year) == 2016){
                switch (Integer.parseInt(month)){
                    case 2:
                        putMap16Data("Feb", programmingJobData);
                        break;

                    case 3:
                        putMap16Data("Mar", programmingJobData);
                        break;

                    case 4:
                        putMap16Data("Apr", programmingJobData);
                        break;

                    case 5:
                        putMap16Data("May", programmingJobData);
                        break;

                    case 6:
                        putMap16Data("Jun", programmingJobData);
                        break;

                    case 7:
                        putMap16Data("Jul", programmingJobData);
                        break;

                    case 8:
                        putMap16Data("Aug", programmingJobData);
                        break;

                    case 9:
                        putMap16Data("Sep", programmingJobData);
                        break;

                    case 10:
                        putMap16Data("Oct", programmingJobData);
                        break;

                    case 11:
                        putMap16Data("Nov", programmingJobData);
                        break;

                    case 12:
                        putMap16Data("Dec", programmingJobData);
                        break;

                    default:
                        putMap16Data(" ", programmingJobData);
                        break;

                }

            }else if(Integer.parseInt(year) == 2017){
                switch (Integer.parseInt(month)){
                    case 1:
                        putMap17Data("Jan", programmingJobData);
                        break;
                    case 2:
                        putMap17Data("Feb", programmingJobData);
                        break;

                    case 3:
                        putMap17Data("Mar", programmingJobData);
                        break;

                    case 4:
                        putMap17Data("Apr", programmingJobData);
                        break;

                    case 5:
                        putMap17Data("May", programmingJobData);

                    case 6:
                        putMap17Data("Jun", programmingJobData);
                        break;

                    case 7:
                        putMap17Data("Jul", programmingJobData);
                        break;

                    case 8:
                        putMap17Data("Aug", programmingJobData);
                        break;

                    case 9:
                        putMap17Data("Sep", programmingJobData);
                        break;

                    case 10:
                        putMap17Data("Oct", programmingJobData);
                        break;

                    case 11:
                        putMap17Data("Nov", programmingJobData);
                        break;

                    case 12:
                        putMap17Data("Dec", programmingJobData);
                        break;

                    default:
                        putMap17Data(" ", programmingJobData);
                        break;

                }

            }else{

                switch (Integer.parseInt(month)){
                    case 1:
                        putMap18Data("Jan", programmingJobData);
                        break;

                    case 2:
                        putMap18Data("Feb", programmingJobData);
                        break;

                    default:
                        putMap18Data(" ", programmingJobData);
                        break;

                }
            }
        }
        HashMap[] hashMaps = {map16Python, map16Php, map16Java, map16Cpp, map16CSharp, map16JS ,map16Go, map16Swift,
                map16Ruby, map16Arduino, map17Python, map17Php, map17Java, map17Cpp, map17CSharp, map17JS, map17Go, map17Swift,
                map17Ruby, map17Arduino, map18Python, map18Php, map18Java, map18Cpp, map18CSharp, map18JS, map18Go, map18Swift,
                map18Ruby, map18Arduino};

        return hashMaps;

    }

    public String[] getProgrammingJobData(String storyId){
        String[] progJobsArrayData = new String[10];
        int[] jobsCounter = new int[10];

        List<String> programmingJobsKeywords = new ArrayList<String>();
        programmingJobsKeywords.add("python");
        programmingJobsKeywords.add("php");
        programmingJobsKeywords.add("java");
        programmingJobsKeywords.add("c++");
        programmingJobsKeywords.add("c#");
        programmingJobsKeywords.add("javascript");
        programmingJobsKeywords.add("go");
        programmingJobsKeywords.add("swift");
        programmingJobsKeywords.add("ruby");
        programmingJobsKeywords.add("arduino");

        ApplicationData applicationData = new ApplicationData();
        JsonObject commentData = applicationData.getCommentsFromStory(storyId);
        JsonArray commentDataJsonArray = commentData.getJsonArray("hits");

        for (JsonValue hitsValue : commentDataJsonArray){
            JsonValue commentText = hitsValue.asJsonObject().getValue("/comment_text");
            for(String word : programmingJobsKeywords){
                if (commentText.toString().toLowerCase().contains(word)){
                    int index = programmingJobsKeywords.indexOf(word);
                    jobsCounter[index]++;
                }
            }
        }

        for(int i = 0; i<10; i++){
            progJobsArrayData[i] = Integer.toString(jobsCounter[i]);
        }

        return progJobsArrayData;
    }

    public void putMap16Data(String month, String[] programming16Data){
        map16Python.put(month, programming16Data[0]);
        map16Php.put(month, programming16Data[1]);
        map16Java.put(month, programming16Data[2]);
        map16Cpp.put(month, programming16Data[3]);
        map16CSharp.put(month, programming16Data[4]);
        map16JS.put(month, programming16Data[5]);
        map16Go.put(month, programming16Data[6]);
        map16Swift.put(month, programming16Data[7]);
        map16Ruby.put(month, programming16Data[8]);
        map16Arduino.put(month, programming16Data[9]);

    }

    public void putMap17Data(String month, String[] programming17Data){
        map17Python.put(month, programming17Data[0]);
        map17Php.put(month, programming17Data[1]);
        map17Java.put(month, programming17Data[2]);
        map17Cpp.put(month, programming17Data[3]);
        map17CSharp.put(month, programming17Data[4]);
        map17JS.put(month, programming17Data[5]);
        map17Go.put(month, programming17Data[6]);
        map17Swift.put(month, programming17Data[7]);
        map17Ruby.put(month, programming17Data[8]);
        map17Arduino.put(month, programming17Data[9]);
    }

   public void putMap18Data(String month, String[] programming18Data){
        map18Python.put(month, programming18Data[0]);
        map18Php.put(month, programming18Data[1]);
        map18Java.put(month, programming18Data[2]);
        map18Cpp.put(month, programming18Data[3]);
        map18CSharp.put(month, programming18Data[4]);
        map18JS.put(month, programming18Data[5]);
        map18Go.put(month, programming18Data[6]);
        map18Swift.put(month, programming18Data[7]);
        map18Ruby.put(month, programming18Data[8]);
        map18Arduino.put(month, programming18Data[9]);
    }
}
