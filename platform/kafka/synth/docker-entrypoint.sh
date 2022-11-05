#!/bin/sh

echo "Data Generation Started!"

# indefinitely generate data to kafka every 5 seconds

while true
do
    echo "Generating 100 rows"
    synth generate /home/synth/bank_db --size 100 --to jsonl: --collection users | kafka-console-producer.sh --bootstrap-server broker:9092 --topic transactions
    echo "Completed, sleeping for 5 seconds..."
    sleep 5
done