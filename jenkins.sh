#Instalar opnjdk dado que jenkins funciona con Java 
sudo apt update
sudo apt install openjdk-17-jre
java -version
#openjdk version "17.0.7" 2023-04-18
#OpenJDK Runtime Environment (build 17.0.7+7-Debian-1deb11u1)
#OpenJDK 64-Bit Server VM (build 17.0.7+7-Debian-1deb11u1, mixed mode, sharing)

#Agregar la keys y los servidores de jenkins
curl -fsSL https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo tee \
  /usr/share/keyrings/jenkins-keyring.asc > /dev/null
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins

#Habilitar Jenkins
sudo systemctl enable jenkins

#Iniciar Jenkins
sudo systemctl start jenkins

#Ver status de jenkins
sudo systemctl status jenkins
