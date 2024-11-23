# Example Retail DBT Project

This is an example dbt project demonstrating common data modeling patterns and potential breaking changes.

## Setup

1. Clone this repository
2. Copy `profiles.yml.template` to `profiles.yml` and update with your credentials
3. Install dependencies:
```bash
dbt deps
```

4. Run the models:
```bash
dbt run
```

## Project Structure

- `models/staging`: Raw data models
- `models/intermediate`: Transformed data models
- `models/marts`: Business-level models
- `data/seed_data`: Sample data for testing
- `macros`: Reusable SQL macros
- `tests`: Custom data tests

## Testing Breaking Changes

1. Create a new branch
2. Make changes to models
3. Run breaking change detector:
```bash
dbt-break-detector --project-dir . --base-branch main
```
