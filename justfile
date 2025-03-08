# Show available commands.
help:
    just --list
# Build services.
build:
    docker compose build
# Start the server.
start:
    docker compose up
# Stop the server.
stop:
    docker compose down
