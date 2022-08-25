package karate.petstore;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;
public class DeleteAPet {
    @Karate.Test
    Karate sampleTest(){
        return Karate.run("classpath:karate/PetStore/DeletePet/DeletesAPet.feature").relativeTo(getClass());
    }
}
