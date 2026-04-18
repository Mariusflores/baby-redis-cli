# baby-redis-cli

A command-line interface for interacting with
[baby-redis](https://github.com/mariusflores/baby-redis) during
development and testing.

## Status

🚧 **In development.** Recently separated from the server repo into
its own module.

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
| `HELP` | Show available commands |
| `QUIT` | Disconnect |

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