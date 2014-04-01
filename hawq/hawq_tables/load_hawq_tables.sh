#!/bin/bash

zcat /pivotal-samples/sample-data/customers_dim.tsv.gz | psql -c "COPY retail_demo.customers_dim_hawq FROM STDIN DELIMITER E'\t' NULL E'';"

zcat /pivotal-samples/sample-data/categories_dim.tsv.gz | psql -c "COPY retail_demo.categories_dim_hawq FROM STDIN DELIMITER E'\t' NULL E'';"

zcat /pivotal-samples/sample-data/order_lineitems.tsv.gz | psql -c "COPY retail_demo.order_lineitems_hawq FROM STDIN DELIMITER E'\t' NULL E'';"

zcat /pivotal-samples/sample-data/orders.tsv.gz | psql -c "COPY retail_demo.orders_hawq FROM STDIN DELIMITER E'\t' NULL E'';"

zcat /pivotal-samples/sample-data/customer_addresses_dim.tsv.gz | psql -c "COPY retail_demo.customer_addresses_dim_hawq FROM STDIN DELIMITER E'\t' NULL E'';"

zcat /pivotal-samples/sample-data/email_addresses_dim.tsv.gz | psql -c "COPY retail_demo.email_addresses_dim_hawq FROM STDIN DELIMITER E'\t' NULL E'';"

zcat /pivotal-samples/sample-data/products_dim.tsv.gz | psql -c "COPY retail_demo.products_dim_hawq FROM STDIN DELIMITER E'\t' NULL E'';"

zcat /pivotal-samples/sample-data/payment_methods.tsv.gz | psql -c "COPY retail_demo.payment_methods_hawq FROM STDIN DELIMITER E'\t' NULL E'';"

zcat /pivotal-samples/sample-data/date_dim.tsv.gz | psql -c "COPY retail_demo.date_dim_hawq FROM STDIN DELIMITER E'\t' NULL E'';"
