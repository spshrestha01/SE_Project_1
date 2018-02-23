package Test;

import Controller.JobPosting;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.HashMap;

import static org.junit.Assert.*;

public class JobPostingTest extends JobPosting {

    @Before
    public void setUp() throws Exception {
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void getJopPostingDataTest() {
       HashMap[] hashMaps = super.getJopPostingData();
       CharSequence expectedValue = "10";
        assertTrue(hashMaps[0].get("Jul").toString().contentEquals(expectedValue));
    }

    @Test
    public void getJobPostFromStoryComments() {
        String storyId = "16282819";
        String num_of_comments = super.getJobPostFromStoryComments(storyId);
        assertFalse(num_of_comments.contentEquals("0"));
    }
}