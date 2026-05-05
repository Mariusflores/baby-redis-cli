# baby-redis-cli

A command-line interface for interacting with
[baby-redis](https://github.com/mariusflores/baby-redis) during
development and testing.

## Status

🚧 **In development.** May be updated with methods as Baby Redis evolves

## Recent Updates

- **JLine CLI** Updated to use JLine for a better CLI experience than interactive scanner
- **FLUSHDB safety:** Full database flush (no args or '*') now requires --confirm to prevent accidental data loss.
- **Pattern support:** Both KEYS and FLUSHDB support no arguments, '*', or '<pattern>*' (e.g., test:*) for pattern-based operations.

## Features

- Interactive REPL for sending commands to baby-redis
- Built-in `HELP` command with usage reference
- Input validation against supported commands
- Connects via [baby-redis-client](https://github.com/mariusflores/baby-redis-client)

## Supported Commands

| Command | Description |
|---------|-------------|
| `SET key value` | Store a string value |
| `GET key` | Retrieve a value |
| `DELETE key` | Remove a key |
| `SADD key val [val...]` | Add values to a set |
| `SREM key val [val...]` | Remove values from a set |
| `SISMEMBER key val` | Check set membership |
| `SMEMBERS key` | List all set members |
| `EXPIRE key seconds` | Set a TTL on a key |
| `TTL key` | Check remaining TTL |
| `KEYS [* | <pattern>*]` | List all keys (all if no argument, '*' or pattern match) |
| `FLUSHDB [* | <pattern>*]` | Clear all keys (all if no argument, '*' or pattern match; requires --confirm for full flush) |
| `HELP` | Show available commands |
| `QUIT` | Disconnect |
## Safety for FLUSHDB

To prevent accidental data loss, running `FLUSHDB` or `FLUSHDB *` now requires explicit confirmation:

```
FLUSHDB --confirm
FLUSHDB * --confirm
```

Pattern-based flushes (e.g., `FLUSHDB test:*`) do not require confirmation.

## Pattern Support for KEYS and FLUSHDB

Both `KEYS` and `FLUSHDB` support:

- No arguments (all keys)
- `*` (all keys)
- `<pattern>*` (e.g., `test:*`)

## Prerequisites

- Java 21+
- Maven
- [baby-redis-client](https://github.com/mariusflores/baby-redis-client) installed locally (`mvn install`)
- A running [baby-redis](https://github.com/mariusflores/baby-redis) server

## Getting Started

```bash
git clone https://github.com/mariusflores/baby-redis-cli.git
cd baby-redis-cli
mvn clean package
java -jar target/baby-redis-cli.jar
```

## Related

- [baby-redis](https://github.com/mariusflores/baby-redis) — the server
- [baby-redis-client](https://github.com/mariusflores/baby-redis-client) — the client library this CLI uses
- [baby-redis-protocol](https://github.com/mariusflores/baby-redis-protocol) — shared RESP protocol library
