# Pusher (WbeSocket) Setup

## Installation Steps

1. **Initialize a Node.js Project**  
    If you haven't already initialized a Node.js project, you can do so by running:
    
```sh
npm init -y
```
    
2. **Install the Pusher Package**  
    To add the Pusher library to your Node.js project, execute:
    
```sh
npm install pusher
```
    

## Code Implementation
Create a new file called `pusherServer.js`.

```sh
javascriptCopy code// JS-1
// Filename: pusherServer.js

// JS-1-FN-1
const initializePusher = () => {
  const Pusher = require('pusher');
  
  const pusher = new Pusher({
    appId: 'APP_ID',
    key: 'APP_KEY',
    secret: 'APP_SECRET',
    cluster: 'APP_CLUSTER',
    useTLS: true
  });
  
  return pusher;
}

// JS-1-FN-2
const main = () => {
  const pusher = initializePusher();
  // Additional logic to interact with Pusher can go here
}

main();
```

## Setting Up Auto-Restart Service

For making the Node.js script run as a service that auto-restarts, you can use a process manager like `PM2`.

1. **Install PM2 globally**

```
npm install pm2 -g
```
    
2. **Start the service**
    
```
pm2 start pusherServer.js --name "pusher-service"
```
    
3. **Set auto-restart**
    
```
pm2 startup
pm2 save
```
    
4. **Monitoring and Logs** To monitor the application logs and processes, you can use:
    
```
pm2 logs
pm2 monit
```
    
5. **Stopping and Deleting the Service** If you need to stop or delete the service, you can use:
    
```
pm2 stop pusher-service
pm2 delete pusher-service
```
