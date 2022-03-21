FROM rust:1.59.0-buster as builder

COPY ./src /src
COPY ./Cargo.toml /Cargo.toml

WORKDIR .

RUN cargo build --release

FROM debian:buster-slim

COPY --from=builder ./target/release/app1 .
RUN chmod +x ./app1

EXPOSE 8080

CMD ["./app1"]

