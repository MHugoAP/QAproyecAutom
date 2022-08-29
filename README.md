# PetStore Automation
***
Author: Miguel Hugo Alcántara Pérez (CTFL)
***
Automation of matching to the requested endpoints along with their method (POST, PUT, GET, DELETE).

##Background: https://petstore.swagger.io/v2

##Starting:
With this project we want to perform automated tests based on the SOLID principle, for better performance, BDD with Maven dependency manager is used in the reports.

##Table of Contents
1.	[GeneralInformation] (#general-information)
2.	[Tools] (#tools)
3.	[Installation] (#installation)
4.	[ProjectStructure] (#project-structure)
5.	[FeatureExecution] (#feature-execution)
6.	[ExecuteClassJava] (#execute-java-class)
***
#general-information
The automation of the request will be carried out by implementing various endpoints using the methods get, post; related to the backend applying a certain design pattern, environment variables and various tools that will help us in creating it. All this was done on a personal machine with the features: MSI, Windows 10, Intel Core i7 10Th, Nvidia-Geforce GTX 1660 TI, 32 GB RAM.
***
### tools
A list of the tools that will be used in the project:
•	[Java JDK] (https://www.oracle.com/mx/java/technologies/javase/javase8-archive-downloads.html): Version 1.8
•	[Maven] (https://maven.apache.org/download.cgi): Version 3.8.6
•	[Intelling IDE] (https://www.jetbrains.com/es-es/idea/download/#section=windows): Version 2022.2.1
•	[Git] (https://git-scm.com/download/win): Version 2.37.2###instalación
•	Cucumber
•	BDD
•	Karate
•	design pattern: Page Object Model
***
### installation
A small introduction of the installation
1.	When you download java, it will leave you an .exe file, proceed to execute it and carry out the assigned steps. We proceed to find a video on how to set environment variables
2.	The same happens with Maven, it will ask you to select the path, and you proceed to the installation. We proceed to find a video on how to set environment variables
3.	In intellij you do the same, it gives you a default path (you can change it) you proceed with the installation, remember that our project is with java implementing Cucumber.
4.	We open Intellij, we go to the File section, now we go to the plugins section, in the magnifying glass we look for “Cucumber for java” and we proceed to install it.
5.	To install Git, we execute the .exe file, follow the steps requested from it and proceed to open said program. The next thing is to configure git globally, you have to have a registered account on GitHub (https://github.com/)
***
### project-structure
The project will have this structure
Request > src > test > java > karate > request > cliente > clientRunner.java (will have all java classes)
					                           > create > CreateRunner.java
                                        AllFeature.java (Will execute all features sequentially)
		       > resourse > karate > request > petStore > AddPet > AddNewPet.feature (all folders along with their feature)
                                                        > DeletePet > DeletePet.feature
               karate-config.js
pom.xml
***
### feature-execution
In order to execute the features, you need an execution order in the runners, its correct execution would be:
1. Execute the AddNewPet runner making it call the corresponding feature
2. from there goes FindPetId and get your information
3. Then UpdatePet to change pet data
4. finally the one for DeletePet is last because we could not search for a pet that has already been eliminated, it must have an order.
***
###execute-java-class
Each feature has its own class making it easier to execute one by one, to execute all the features, you will have to use the AllFeature class to obtain the html provided by cucumber, giving us a better experience in terms of reports.
To execute all the functionalities it is necessary to call them in order through the tags in the runner class AllFeature| 