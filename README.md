# Posts messenger

This is a sample application to showcase turbo-frames in action, with posts sent to Kafka topic "posts" made possible with the Karafka gem. Please do not mind the absence of styling in the views - the implementation is basic.

### Ruby version ~> 3.4.6

### Services
Please make sure to have Kafka up and running. Preferably with:
```
git clone git@github.com:karafka/karafka.git
cd karafka
docker-compose up
```
Read more at: https://karafka.io/docs/Kafka-Setting-Up/

### Instructions
```
bundle install
bin/rails db:migrate
bin/dev
```

### NOTE: The server runs at port 5000
`localhost:5000`

`bin/dev`  will automatically install the `overmind` gem for you and will run both the karafa server and the rails server. You can see the consumed messages in the terminal, as consumed by the PostsConsumer.
