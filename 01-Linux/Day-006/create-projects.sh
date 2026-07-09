#!/bin/bash

for PROJECT in app configs logs scripts backup

do
   mkdir -p "$PROJECT"
done

echo "Project folders created successfully!"
