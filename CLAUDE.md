# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Symfony 8.0 webapp with Doctrine ORM, Twig, forms, security, mailer, and Turbo/Stimulus (Hotwire).

## Common Commands

```bash
# Start development server
symfony server:start
# or: php -S localhost:8000 -t public/

# Clear cache
php bin/console cache:clear

# Run tests
php bin/phpunit

# Database
php bin/console doctrine:database:create
php bin/console doctrine:migrations:migrate
php bin/console doctrine:migrations:diff

# Code generation
php bin/console make:controller
php bin/console make:entity
php bin/console make:form
php bin/console make:migration

# Assets
php bin/console importmap:install
php bin/console asset-map:compile
```

## Architecture

- `src/Controller/` - HTTP controllers
- `src/Entity/` - Doctrine entities
- `src/Repository/` - Database repositories
- `src/Form/` - Form types
- `config/packages/` - Bundle configuration (YAML)
- `config/routes.yaml` - Route definitions
- `templates/` - Twig templates
- `assets/` - JavaScript/CSS (Stimulus controllers, Turbo)
- `migrations/` - Doctrine migrations
- `tests/` - PHPUnit tests

## Configuration

- `.env` - Environment variables (DATABASE_URL, MAILER_DSN, etc.)
- `config/packages/doctrine.yaml` - Database configuration
- `config/packages/security.yaml` - Authentication/authorization
- `importmap.php` - JavaScript dependencies (AssetMapper)
