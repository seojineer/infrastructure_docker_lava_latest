#!/bin/bash

lava-server manage users add admin --passwd admin
sleep 5
lava-server manage authorize_superuser --username admin
