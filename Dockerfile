FROM mcr.microsoft.com/dotnet/sdk:8.0

RUN apt-get update && apt-get install -y vim less man-db wget telnet curl net-tools iputils-ping htop dnsutils strace

WORKDIR /app

COPY . .

RUN dotnet publish -c Release -o /app/publish

EXPOSE 8080

CMD ["dotnet", "/app/publish/app.dll"]
