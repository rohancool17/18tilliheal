# 18heal Static Website

This is a static website for 18heal.

## Deployment with PM2

The project is configured to be served using [PM2](https://pm2.keymetrics.io/).

### Prerequisites

Ensure you have Node.js and PM2 installed on your server:

```bash
sudo npm install pm2 -g
```

### Starting the Server

To start the website using the provided ecosystem configuration:

```bash
pm2 start ecosystem.config.js
```

This will:
- Serve the files from the `./web` directory.
- Run on port `8080`.
- Enable SPA (Single Page Application) routing.

### Management Commands

- **Restart**: `pm2 restart 18heal`
- **Stop**: `pm2 stop 18heal`
- **Logs**: `pm2 logs 18heal`
- **Status**: `pm2 status`

### Persistence

To ensure the server starts automatically on system reboot:

```bash
pm2 save
pm2 startup
```
*(Follow the instructions printed by the startup command)*.
