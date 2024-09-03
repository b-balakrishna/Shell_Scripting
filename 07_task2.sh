#!/bin/bash

# exmple usage : 07_task02 bk 123.345.1.2
username=$1
IP=$2

ssh $username@$IP
