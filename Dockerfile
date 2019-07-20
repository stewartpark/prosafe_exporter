FROM rust:1.36
WORKDIR /src
ADD . /src
RUN cargo build --release

FROM alpine:3.10.1
COPY --from=0 /src/target/release/prosafe_exporter /
