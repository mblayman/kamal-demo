# Use the official Python image as a base
FROM python:3.12-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
ENV UV_PROJECT_ENVIRONMENT=/usr/local

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        curl \
    && rm -rf /var/lib/apt/lists/*

COPY --from=ghcr.io/astral-sh/uv:0.4.7 /uv /bin/uv

# Set the working directory
WORKDIR /app

RUN addgroup --system app && adduser --system --group app

# Copy the requirements file to the container
COPY --chown=app:app pyproject.toml uv.lock /app/

# Install dependencies
RUN uv sync --frozen

# Copy the Django project code to the container
COPY --chown=app:app . /app/

# Expose the port that the Django app will run on
EXPOSE 8000

USER app

# Run Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
