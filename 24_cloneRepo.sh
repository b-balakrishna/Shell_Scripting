#!/bin/bash


read -p "Enter the repository link: " repoLink

domainName="github.com"

getRepo(){
    if [[ $repoLink == *"$domainName" ]];
    then
        echo "Getting Repository please wait..."
        git clone $repoLink
    else
        echo "Please enter Valid Link"
    fi
}

getRepo