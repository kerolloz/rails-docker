# Docker Rails

> The purpose of this very simple web-app is to apply some of the knowledge I learned from [Docker for Rails Developers](https://pragprog.com/book/ridocker/docker-for-rails-developers) book _by Rob Isenberg_.

I used PostgreSQL to keep a table of _posts_.  
I used Redis to keep a simple counter of _welcome_ page views.

For sure you need to have [Docker](https://docker.io) and [Docker Compose](https://docs.docker.com/compose/install/) installed.

Use the following command to run the app on [localhost:3000](localhost:3000)
```sh
docker-compose up -d
```

On [localhost:3000/welcome](localhost:3000/welcome) you should get  
![welcome pic](screenshots/welcome.png)  

On [localhost:3000/posts](localhost:3000/posts) you should get  
![welcome pic](screenshots/posts.png)

You can find out more at https://docs.docker.com/compose/rails.
