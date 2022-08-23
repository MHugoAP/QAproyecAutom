package karate.petstore;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;

//@KarateOptions(features = "classpath:karate/PetStore/1AddNewPet.feature", tags = {"~@ignoreScenario", "~@ignoreScenarioOutline"})

public class AddNewPet {
    @Karate.Test
    Karate testSample(){
        return Karate.run("classpath:karate/PetStore/1AddNewPet.feature").relativeTo(getClass());
    }
}