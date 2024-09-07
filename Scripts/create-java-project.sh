#!/bin/env bash

mvn_proj() {
	mvn archetype:generate -DgroupId=com.example -DartifactId=$1 -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
}

mvn_proj $1
