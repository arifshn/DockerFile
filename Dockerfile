#Base image olarak OpenJDK kullanıyoruz
FROM openjdk:17-jdk-slim

#Çalışacagı dizini yazıyoruz 
WORKDIR /app 

#Uygulamanın dosyasını container a kopyalıyoruz
COPY gradle-wrapper.jar /app/gradle-wrapper.jar:

#Uygulamayı Çalıştırma Aşaması 
CMD ["java"."-jar","gradle-wrapper.jar"]

