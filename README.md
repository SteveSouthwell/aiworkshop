# AI Workshop - OpenEdge ABL Project

This repository contains OpenEdge ABL code for the AI Workshop, demonstrating the Business Entity Pattern for data access in Progress OpenEdge applications.

## Project Structure

- `src/` - Source code including ABL windows and business entities
- `src/business/` - Business entity classes and dataset definitions
- `dump/` - Database schema definition (sports2000)
- `doc/` - Documentation and architecture guides
- `.windsurf/` - AI assistant rules and workflows
- `.github/` - GitHub issue templates

## Architecture

This project demonstrates the Business Entity Pattern:
- **EntityFactory** - Singleton factory for managing business entity lifecycle
- **CustomerEntity** - Business entity for Customer data access
- **Dataset definitions** - Include files defining temp-tables and datasets
- **UI Windows** - AppBuilder-generated windows using the business entities

## Database

Uses the Sports2000 sample database. See `dump/sports2000.df` for the schema.

## OpenEdge Version

OpenEdge 12.8
