package karate.petstore;

import com.intuit.karate.junit5.Karate;
public class DeleteAPet {
    @Karate.Test
    Karate sampleTest(){
        return Karate.run("classpath:karate/PetStore/ZDeletePet/DeletesAPet.feature").relativeTo(getClass());
    }
}