function fn(){
var env = karate.env;
var properties = read('classpath:karate-properties.json')
if(!env){
env = 'dev'
}
if(!env){
config.faker = Java.type('com.github.javafaker.Faker');
env = 'claseFake'
}
var config = properties[env];
return config;
}