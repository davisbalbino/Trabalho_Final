

import com.intuit.karate.junit5.Karate;

class firstTestRunner {
    
    @Karate.Test
    Karate firstTest() {
        return Karate.run("firstTeste").relativeTo(getClass());
    }    

}