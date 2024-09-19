# Github dan aldığımız proje dosyasını açtım ve içinden jar uzantılı kod dosyasının yerine baktım
/home/arif/demo-java-project/gradle/wrapper 

# Dosya uzantısın altında "gradle-wrapper.jar" adında ki dosyayı buldum 

# Sonrasında dosyanın içerisine bir adet "Dockerfile" dosyası oluşturuyorum 
touch Dockerfile

# Dockerfile klasörümü gerekli kodları yazarak projemi çalıstırmaya hazır hale getirdim
# Şimdi image i inşa etmem için her şey hazır , aşağıdaki komutla inşa ettim
docker build -t gradle-wrapper.jar .

# İnşa ettiğim image i repository de kontrol etmek istiyorum 
docker image ls

# Sonuç olarak repository de image dosyam gözüküyor
# İmage dosyasını container olarak çalıştırıp projeyi ayağa kaldırmak kaldı 
# Aşağıdaki komutu yazarak container ı çalıştırıyorum 

docker run -d -p 8081:8080 gradle-wrapper.jar
 
# Burada kullanmış olduğum -d mod u programın arka planda çalışmasını sağlıyor
# -p modu ise host ile container arasında bağlantı kurmamızı sağlıyor
# Default hali 8080:8080 dir . Bende o port dolu olduğu için 8081:8080 port unu verdim 
# Son olarak yaptığım projenin dosyasını github hesabıma yüklemek kaldı 
# Bu işlem için gerekli olan komutlar sırası ile aşağıdadır 

git init 
# "git init" komutu ile bulunduğum klasörü git reposuna dönüştürüyorum 

git add .
# Klasör içindeki dosyaları staging bölgesine aktarıyorum 

git status 
# Bu komut ile işlemi takip ediyorum 

git commit -m "commit mesajı"
# Git reposuna kalıcı olarak geçmesini sağladım (Local Repository)

git remote set-url origin git@github.com:username/repo-name.git
# Git reposunun url adresini yeniden verdim

git push -u origin master
# Git push komutu ile dosyalarımı uzak depoya aktardım 





