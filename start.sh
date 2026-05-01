#!/bin/bash
cd "$(dirname "$0")" || exit 1
mvn clean package
java -jar target/baby-redis-cli.jar
