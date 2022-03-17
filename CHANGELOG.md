# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## Unreleased

### Added
- number of tagged addresses in statistics
- tag properties: `is_cluster_definer` and `is_public`
- entity property: `root_address`

## [0.5.1] - 2021-11-30
### Added
- Route for requesting data from other endpoints in bulk
- Route for retrieving the transactions between two entities
### Changed
- Tag response model
### Removed
- Tag coherence
- CSV variants of routes in favour of new bulk interface
- Retrieving arbitrary lists of things (list_entities, list_addresses, list_blocks, list_txs)

## [0.5.0] - 2021-06-02
### Added
- Ethereum support
- Bulk retrieval endpoints for addresses and entities
- Entity can have tags on the entity and the address level. 
### Changed
- Fetch entity/address with tags optionally
- Calculate tag coherence optionally

## [0.4.5] - 2020-11-18
### Added
- Migrated the API of [graphsense-rest](https://github.com/graphsense/graphsense-rest) v0.4.4 into the OpenAPI specification
