# upfront

## About

So called `upfront` is simple `Sinatra` based API/Backend for sales management.

In short, you can think of it as about simple `Point-of-Sales` backend.

It includes methods to store or retrieve data for:

- store (config)
- products 
- stocks (store warehouse)
- orders 
- documents (inventory)
- invoices
- receipts
- users

It uses `meilisearch` as its core database (because why not?) although being a temporary storage in same time.

In production environment, you would have OLTP storage e.g. Postgres or SQL Server behind it.

For demo purposes it uses `Dagster` with sample ELT's/ETL's that move data from `meili` to relational database.

## TODO

To be done:

- [ ] Build core/base:
  - [ ] Add store configuration (based on yaml or cli).
- [ ] Build orders logic/methods/routes.
- [ ] Build documents logic/methods/routes.
- [ ] Build invoices logic/methods/routes.
- [ ] Build receipts logic/methods/routes.
- [ ] Build fake sales generator.
- [ ] Build sample OLTP database based on `upfront` data schema.
- [ ] Build sample ELT's & ETL's in Dagster that move data from `meili` to `OLTP` database.
- [ ] Build occasional dashboard based on Astro & Apache ECharts.

## Notes

Built for `Proof of Concept` purposes.