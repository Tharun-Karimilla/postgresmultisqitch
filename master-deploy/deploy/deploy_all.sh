#!/bin/bash
set -e
echo "Deploying schema1"
cd ../schema1 && sqitch deploy db:pg://postgres:postgres@localhost:5432/postgres
echo "Deploying schema3"
cd ../schema3 && sqitch deploy db:pg://postgres:postgres@localhost:5432/postgres
echo "Deploying schema2"
cd ../schema2 && sqitch deploy db:pg://postgres:postgres@localhost:5432/postgres
