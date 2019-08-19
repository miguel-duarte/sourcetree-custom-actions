#!/bin/bash
result=$(git describe --exact-match $1)
echo $result | clip