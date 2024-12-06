## POC Karakfa

POC to using kafka with Rails

### Getting Started

1. Up kafka service

```
docker compose up -d
```

2. Up karafka server

```
rake karafka_server
```

3. Up rails server

```
rake rails_server

# or

rails s
```

4. Open rails console and producer message to app

```
# rails c

Karafka.producer.produce_sync(topic: 'example', payload: { 'ping' => 'pong' }.to_json)
```

or access:

http://localhost:3000/welcome

```
[58d526f9fd0d] Consume job for ExampleConsumer on example/0 started
"############"
{"ping"=>"pong"}
"############"
```

5. Look count messages

Access: http://localhost:3000/karafka
