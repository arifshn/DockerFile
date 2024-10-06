#Base image olarak OpenJDK kullanıyorum
FROM openjdk:17-jdk-slim

#Çalışacagı dizini yazıyorum 
WORKDIR /app 

#Uygulamanın dosyasını container a kopyalıyorum
COPY gradle-wrapper.jar /app/gradle-wrapper.jar:

#Uygulamayı Çalıştırma Aşaması 
CMD ["java"."-jar","gradle-wrapper.jar"]

