# rb_webhook
## Table of Contents
1. [General Info](#general-info)
2. [Technologies](#technologies)
3. [Installation](#installation)

## General Info
***  
This project is a basic **web server** built with Sinatra in Ruby. It provides an HTTP GET endpoint that returns a **"Hello World"** message in JSON format.

- **HTTP Endpoint**:
  - Route: `/webhook`
  - Response: `{"message": "Hola Mundo desde Webhook en Ruby"}`

- **Server Configuration**:
  - Port: `4567`
  - Binding: `0.0.0.0` (accessible from all network interfaces)

## Technologies
***  
A list of technologies used within the project:
* [Ruby](https://www.ruby-lang.org): Version 3.x
* [Sinatra](https://sinatrarb.com): Version 2.x

## Installation
***  
Follow these steps to install and run the project:
### Via GitHub
Follow these steps to install and run the project:
```
ruby --version  
gem install bundler
```
Copy the repository
```
git clone https://github.com/nava2105/rb_webhook.git
```
Enter the directory
```
cd ../rb_webhook
```
Install the dependencies using Bundler:
```
bundle install
```
Compile the project directly form mvn
```
ruby app.rb
```
Open a browser and enter to
[http://localhost:4567/webhook](http://localhost:4567/webhook)
### Via Docker-hub
Pull the image from Docker-hub
```
docker pull na4va4/rb_webhook
```
Start a container from the image
```
docker run -p 4567:4567 na4va4/rb_webhook
```
Open a browser and enter to
[http://localhost:4567/webhook](http://localhost:4567/webhook)