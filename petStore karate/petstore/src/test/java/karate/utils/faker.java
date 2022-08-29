package karate.utils;

import com.github.javafaker.Faker;

import java.util.ArrayList;

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
            lista.add(firstNameFaker);
            lista.add(lastNameFaker);
        }
       // FileSystem.setDefaultFileSystem("data.js", JsonFormat.Feature(, null, "\t"));
    }
}
