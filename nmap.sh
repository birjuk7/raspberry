#!/bin/bash
nmap -sL $(hostname -I | cut -f1 -d ' ')/24 | awk -F' ' '{print $6}' | sed '/^$/d'

