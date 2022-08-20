package karate.petstore;

import com.intuit.karate.junit5.Karate;

public class AddNewPet {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/PetStore/1AddNewPet.feature").relativeTo(getClass());
    }
}