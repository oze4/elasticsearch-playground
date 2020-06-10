#!/bin/bash

make -rpn | sed -n -e '/^$/ { n ; /^[^ ]*:/p ; }'