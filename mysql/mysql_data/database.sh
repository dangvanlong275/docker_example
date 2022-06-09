#!/bin/bash
echo "*** Create database"
PS3='Please enter your choice (0 to quit): '
options=("example", "create all")
select opt in "${options[@]}"; do
    case $REPLY in
    "1")
        echo "***Create Example***"
        mysql -uroot -p111111 -e 'create database example'
        mysql -uroot -p111111 example < /example.sql
        echo "***Done"
        break
        ;;
    "2")
        echo "***Create Example***"
        mysql -uroot -p111111 -e 'create database example'
        mysql -uroot -p111111 example < /example.sql
        echo "***Done"
        break
        ;;
    "0")
        break
        ;;
    "exit")
        break
        ;;
    *) echo "invalid option $REPLY" ;;
    esac
done

