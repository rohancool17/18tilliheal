# 18heal Static Website

This is a static website for 18heal.

## Deployment with Docker (Recommended)

This project uses `nginx:alpine` to provide a fast and extremely lightweight web server.

### 1. Starting the Server

To build and run the container on port `7100`:

```bash
docker-compose up -d --build
```

### 2. Management Commands

- **Stop**: `docker-compose stop`
- **Restart**: `docker-compose restart`
- **Logs**: `docker-compose logs -f`
- **Status**: `docker ps`

---

## Deployment with PM2 (Alternative)

If you prefer PM2 over Docker, you can still use the `ecosystem.config.js`.

### 1. Prerequisites

Ensure you have Node.js and PM2 installed on your server:

```bash
sudo npm install pm2 -g
```

### 2. Starting the Server

```bash
pm2 start ecosystem.config.js
```

This will serve the files from the `./web` directory on port `7100` (as updated in your config).

### 3. Management Commands

- **Restart**: `pm2 restart 18heal` --update-env
- **Stop**: `pm2 stop 18heal`
- **Logs**: `pm2 logs 18heal`
- **Status**: `pm2 status`

### 4. Persistence

```bash
pm2 save
pm2 startup
```
