package karate.petstore;

import com.intuit.karate.junit5.Karate;

public class AddNewPet {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/petstore/addnewpet.feature").relativeTo(getClass());
    }
}
