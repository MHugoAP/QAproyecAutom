package karate.petstore;

import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit5.Karate;
@KarateOptions (features = "classpath:karate/PetStore/4DeletesAPet.feature", tags = "~@ignore")

public class DeleteAPet {
    @Karate.Test
    Karate sampleTest(){
        return Karate.run("classpath:karate/PetStore/4DeletesAPet.feature").relativeTo(getClass());
    }
}
