package karate.user;

import com.intuit.karate.junit5.Karate;

public class LoginUser {
    @Karate.Test
    Karate LoginUser(){
        return Karate.run("classpath:karate/User/LoginUser/LoginUser.feature").relativeTo(getClass());
    }
}
