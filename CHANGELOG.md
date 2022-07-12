# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [1.0.0] - 2022-07-13
### Added
- examples for `list_block_txs`, `list_address_txs`, `list_entity_txs`, `list_tags_by_address`, `list_address_links`, `list_entity_links`, `list_address_tags_by_entity`, `get_tx_io`, `get_exchange_rates`, `list_address_tags`
- Property `currency` for most response objects.
- Properties `no_inputs` and `no_outputs` for transaction objects.
- Properties `no_address_tags` and `best_address_tag` to entity objects.
- Properties `entity`, `tagpack_creator`, `tagpack_uri`, `confidence` and `confidence_level` to address tag objects.

### Changed
- `list_tags_by_entity` -> `list_address_tags_by_entity`
- `list_entity_neighbors` and `list_address_neighbors` now return the full entity/address object as part of an adapted response object.
- `search_entity_neighbors` returns an array of subtrees now, response schema adapated.
- `list_tags` -> `list_address_tags`, now returning `address_tags` of any currency
- Made object properties which are required `required`.
- Property `is_public` -> `tagpack_is_public` for address tag objects.

### Removed
There are no tags on the entity level anymore. Tags always apply to an address. In the case of entities, it's the root address.
- Flag `include_tags` for `get_entity`, `get_address` and `get_address_entity`
- Flag `tag_level` for `list_tags_by_entity` (now `list_address_tags_by_entity`)
- Parameter `currency` and `tag_level` for `list_tags` (now `list_address_tags`)
- Property `active` from address tag response.

## [0.5.2] - 2022-03-18
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
