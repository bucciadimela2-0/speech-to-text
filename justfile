default:
    @just --list

setup:
    mise install
    uv sync --group dev

docker-up:
    docker compose -f docker-compose.local.yml --profile app up -d

format:
    uv run ruff format .

test:
    uv run pytest