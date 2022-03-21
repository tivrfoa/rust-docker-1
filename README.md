
From:

https://blog.logrocket.com/a-minimal-web-service-in-rust-using-hyper/

Part 1: Building Applications using Tokio and Hyper in Rust<br>
https://www.youtube.com/watch?v=BXOLdr-9pl4

## Building the image

```sh
sudo docker build -t app1:0.0.1 .
```

## Running

```sh
sudo docker run -p 8080:8080 app1:0.0.1
```

By exposing the port we are able to call from host:

```sh
curl -X POST http://localhost:8080/send -d '{"name": "chip", "active": true }'
```
