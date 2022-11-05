-- create a stream 

CREATE STREAM user_transactions (payload VARCHAR) WITH (kafka_topic='transactions', value_format='json', partitions=1);