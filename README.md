# Exercices
Comandos actividad docker:
docker pull hello-world
docker run hello world

Comandos Docker/SQL Server
docker pull mcr.microsoft.com/mssql/server
docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=Database!2022" -p 1433:1433 -d mcr.microsoft.com/mssql/server:2022-latest
Comando para la persistencia:
docker run -d -v C:\Users\a875701 -p 1433:1433 mcr.microsoft.com/mssql/server:2022-latest 
