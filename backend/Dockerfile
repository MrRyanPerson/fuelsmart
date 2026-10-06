# Sourced from https://docs.astral.sh/uv/guides/integration/docker
FROM python:3.14-trixie

# Install UV
COPY --from=ghcr.io/astral-sh/uv:0.12.23 /uv /uvx /bin/

# Copy the project into the image
COPY . /app

# Disable development dependencies
ENV UV_NO_DEV=1

# Sync the project into a new environment, asserting the lockfile is up to date
WORKDIR /app
RUN uv sync --locked

CMD ["uv", "run", "fuel-smart"]