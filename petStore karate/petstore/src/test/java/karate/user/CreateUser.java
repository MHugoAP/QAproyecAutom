package karate.user;

import com.intuit.karate.junit5.Karate;
public class CreateUser {
    @Karate.Test
    Karate CreateUser(){
        return Karate.run("classpath:karate/User/CreateUser/CreateUser.feature").relativeTo(getClass());
    }
}