package Test;

import Controller.CommonProgJob;
import org.junit.Test;

import java.util.HashMap;

import static org.junit.Assert.*;

public class CommonProgJobTest {
    CommonProgJob commonProgJob = new CommonProgJob();

    @Test
    public void getHackerNewsDataForCommonJobs() {
        HashMap[] hashMaps = commonProgJob.getHackerNewsDataForCommonJobs();
        assertTrue(hashMaps[0].get("Jun").toString().contentEquals("1"));
    }

    @Test
    public void getProgrammingJobData() {
        String storyId = "16282819";
        String[] programmingJobDataArray = commonProgJob.getProgrammingJobData(storyId);
        assertTrue(programmingJobDataArray[0].contentEquals("4"));
    }

    @Test
    public void putMap16Data() {
        String[] data = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0"};
        commonProgJob.putMap16Data("Feb", data);
        assertTrue(commonProgJob.map16Python.get("Feb").contentEquals(data[0]));
    }

    @Test
    public void putMap17Data() {
        String[] data = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0"};
        commonProgJob.putMap17Data("Apr", data);
        assertTrue(commonProgJob.map17Cpp.get("Apr").contentEquals(data[3]));
    }

    @Test
    public void putMap18Data() {
        String[] data = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "0"};
        commonProgJob.putMap18Data("Apr", data);
        assertTrue(commonProgJob.map18Arduino.get("Apr").contentEquals(data[9]));
    }
}