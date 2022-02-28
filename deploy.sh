#!/usr/bin/env bash
sudo apt update && sudo install nodejs npm
# Install pm2 which is a production process manager for Node.js with a built-in load balancer.
sudo npm install -g pm2
# Stop any instance of our application currently running.
pm2 stop example_app
# Change directory into folder where the application is downloaded.
cd ExampleApplication
# Install application dependencies.
npm intall
# Start the applicatio with the process name example_app using pm2.
pm2 start ./bin/www --name example_app