package Test;

import Controller.OnsiteRemoteJob;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;

import java.util.HashMap;

import static org.junit.Assert.*;

public class OnsiteRemoteJobTest extends OnsiteRemoteJob {

    @Before
    public void setUp() throws Exception {
    }

    @After
    public void tearDown() throws Exception {
    }

    @Test
    public void getOnsiteRemoteDataTest() {
        HashMap[] hashMaps = super.getOnsiteRemoteData();
        CharSequence expectedValue = "5";
        assertTrue(hashMaps[0].get("Feb").toString().contentEquals(expectedValue));
    }

}