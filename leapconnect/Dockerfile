ARG BUILD_FROM
ARG LEAPCONNECT_VERSION=0.5.0

# ---- Stage 1: Build Vue.js frontend ----
FROM node:22-alpine AS frontend-build
ARG LEAPCONNECT_VERSION

RUN apk add --no-cache git \
    && git clone --depth 1 --branch "v${LEAPCONNECT_VERSION}" \
       https://github.com/markoceri/leapconnect.git /src

WORKDIR /src/frontend
RUN npm ci && npm run build

# ---- Stage 2: Runtime on HA base ----
FROM ${BUILD_FROM}
ARG LEAPCONNECT_VERSION

# Runtime deps for Pillow
RUN apk add --no-cache jpeg zlib

# Install uv
COPY --from=ghcr.io/astral-sh/uv:latest /uv /uvx /bin/

# Clone source
RUN apk add --no-cache git \
    && git clone --depth 1 --branch "v${LEAPCONNECT_VERSION}" \
       https://github.com/markoceri/leapconnect.git /src \
    && apk del git

WORKDIR /app

# Install Python dependencies
RUN cp /src/pyproject.toml /src/uv.lock . \
    && uv sync --frozen --no-dev --no-editable

# Copy application code
RUN cp /src/main.py /src/models.py /src/schemas.py /src/alembic.ini . \
    && cp -r /src/persistence /src/services /src/migrations .

# Copy built frontend
COPY --from=frontend-build /src/frontend/dist ./frontend/dist

# Cleanup
RUN rm -rf /src

# Copy run script
COPY run.sh /
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]
