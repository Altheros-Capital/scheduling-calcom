# Altheros-Capital
Calenda Repo for Altheros Capital

---

## Prerequisites

- Install [Docker Desktop](https://www.docker.com/products/docker-desktop)
- Make sure Docker is running on your machine

---

## Start the App

Use the following command from the root of the project:

```bash
docker-compose build --no-cache
docker-compose up
```

## Once Running

- Frontend available at: http://localhost:3000
- Database available at: http://localhost:5555


## Initialize Webhook

Use ngrok to podcast our local backend url: https://dashboard.ngrok.com/get-started/setup/windows  
The final step is running `ngrok http http://localhost:8080` in a new terminal window, as stated on the ngrok website