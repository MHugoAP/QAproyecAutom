package karate.petstore;

import com.intuit.karate.junit5.Karate;

public class FindPetByID {
    @Karate.Test
    Karate sampleTest(){
        return Karate.run("classpath:karate/petstore/FindPetById.feature").relativeTo(getClass());
    }
}
