# Docker Setup Guide for Jekyll Site

This guide explains how to run your Jekyll personal website locally using Docker.

## Prerequisites

- Docker Desktop installed and running on your Mac
- This repository cloned to your local machine

## Quick Start

### First Time Setup
1. Open Terminal and navigate to your project directory:
   ```bash
   cd /path/to/ruishichen.github.io
   ```

2. Start Docker Desktop (if not already running):
   ```bash
   open -a Docker
   ```
   Wait a few seconds for Docker to fully start.

3. Build and run the Jekyll site:
   ```bash
   docker-compose up --build
   ```
   
   **Note:** The first build will take several minutes as it downloads Ruby, installs all gems, and sets up the environment. This is normal!

### Subsequent Runs
After the first setup, you can start the site much faster:

```bash
docker-compose up
```

## Accessing Your Site

Once the server is running, you'll see:
```
Server address: http://0.0.0.0:4000/
Server running... press ctrl-c to stop.
```

Open your web browser and go to:
- **http://localhost:4000**
- **http://127.0.0.1:4000**

## Stopping the Server

Press **Ctrl+C** in the terminal to stop the Jekyll server.

## Development Workflow

1. Start the server: `docker-compose up`
2. Edit your files (markdown, HTML, CSS, etc.)
3. Changes will automatically reload in your browser
4. Stop the server when done: **Ctrl+C**

## Troubleshooting

### Docker Not Running
If you see "Cannot connect to the Docker daemon", start Docker Desktop:
```bash
open -a Docker
```

### Port Already in Use
If port 4000 is busy, stop any existing containers:
```bash
docker-compose down
```

### YAML Errors
If you see YAML parsing errors, check your markdown files' front matter (the content between `---` at the top of files).

## File Structure

- `Dockerfile` - Defines the Ruby/Jekyll environment
- `docker-compose.yaml` - Service configuration
- `_config_docker.yml` - Docker-specific Jekyll settings
- Your content files are in `_posts/`, `_publications/`, `_portfolio/`, etc.

## Notes

- The site runs in a Docker container but your files are mounted from your local machine
- Any changes you make to files will be reflected immediately
- The Docker setup matches GitHub Pages environment for consistency
