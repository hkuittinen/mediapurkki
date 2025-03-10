# Show available commands.
help:
    just --list
# Build services.
build:
    docker compose build
# Start the server.
start:
    docker compose up --detach
# Start the server attached.
start-attach:
    docker compose up 
# Stop the server.
stop:
    docker compose down
# Show logs.
logs:
    docker compose logs --follow
