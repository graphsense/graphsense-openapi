# Changelog
All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [1.6.0-dev]

- added parameters `min_height`, `max_height` and `order` to `list_address_links` and `list_entity_links` to limit retrieved txs.

## [24.02.0/1.5.0] - 2024-02-29

### Added
- added parameter `order` to `list_address_txs` and `list_entity_txs` to control sort order of returned list of transactions

## [24.01.1/1.4.2] - 2024-01-25

### Fixed
- Remove unneeded punctuation

## [24.01.0/1.4.1] - 2024-01-25

### Fixed
- Default value for token_tx_id was wrong type (bool instead of int)

## [23.09/1.4.0] - 2023-09-20

### Added
- new endpoint /{currency}/txs/{hash}/spending - get the tx hashes and indexes of all tx outputs spent in this transaction
- new endpoint /{currency}/txs/{hash}/spent_in - get the tx hashes and indexes of all transactions spending an output of the transaction

### Changed
- decreased the min length for a search input to 2

## [23.06/1.3.0] - 2023-06-15

No changes.

## [23.03/1.3.0] - 2023-03-28
### Added
- Support for actors to collect tags under the umbrella of their real world controller
- new endpoints /tags/actors/{actor_id} - get actor by id
- new endpoint /tags/actors/{actor_id}/tags - list of tags belonging to the actor
- added actors to `search_result` object of endpoint /search.
- added parameters `min_height`/`max_height` to /addresses/{address}/txs and /entities/{entity}/txs endpoints to allow for range queries
- added flag `include_actors` to /entities/{entity} and /entities/{entity}/neighbors endpoints
- added flag `exclude_best_address_tag` to /entities/{entity} and /entities/{entity}/neighbors endpoints to omit fetching the best address tag


## [23.01/1.2.0] - 2023-01-30
### Added
- Token Support for Ethereum stable coin tokens (WETH, USDT, USDC)
- new endpoints /{currency}/token_txs/{tx_hash} - get token txs per hash
- new endpoint /{currency}/supported_tokens - list supported tokens
- new optional parameter token_tx_id on /{currency}/txs to get a specific token transaction
- Entities contain token balances, and other token related aggregated statistics
- Ethereum addresses now contain a field is_contract
- Neighbors contain aggregated token statistics

## [1.1.1] - 2022-11-25
### Added
- Example for `bulk.json` endpoint.
### Changed
- Denormalized search result levels to ease code generation.

## [1.1.0] - 2022-10-10
### Added
- `only_ids` filter for `list_address_neighbors`
- address status field (possible status: clean, dirty, new)
- `direction` to `list_address_txs` and `list_entity_txs` to filter transactions whether they are incoming or outgoing

## [1.0.1] - 2022-08-26
### Added
- format for some ints
- denormalize neighbors response objects

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
- `search_entity_neighbors` returns an array of subtrees now, response schema adapted.
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
