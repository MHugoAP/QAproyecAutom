package karate.petstore;

import com.intuit.karate.junit5.Karate;

public class UpdatesAPet {
    @Karate.Test
    Karate sanpleText(){
        return Karate.run("classpath:karate/PetStore/UpdatesPet/UpdatesAPet.feature").relativeTo(getClass());
    }
}
