package karate.Utils;

import com.github.javafaker.Faker;
import org.glassfish.jersey.karate.message.internal.MsgTraceEvent;

import java.io.File;
import java.nio.file.FileSystem;
import java.util.ArrayList;
import java.util.Date;

public class faker {

    public static void main(String[] args) {
        ArrayList<String> lista = new ArrayList<String>();

        Faker faker = new Faker();
        String firstNameFaker = faker.name().firstName();
        String lastNameFaker = faker.name().lastName();
       // System.out.println(firstNameFaker + " " + lastNameFaker);
        lista.add(firstNameFaker + " " + lastNameFaker);
        lista.add(firstNameFaker + " " + lastNameFaker);

        System.out.println(lista.get(0));

        for (int i = 0; i < lista.size(); i++) {
            //System.out.printf(lista.get(i));
        }

        for (int i = 100; i < 200; i++) {
            String first = faker.name().firstName();
            String last = faker.name().firstName();
            String category = faker.animal().name();
        }
    }
}
