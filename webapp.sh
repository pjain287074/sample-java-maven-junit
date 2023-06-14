#!/bin/bash

# Create project directory
mkdir webapp
cd webapp

# Create pom.xml file
cat <<EOF > pom.xml
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>com.example</groupId>
    <artifactId>my-maven-project</artifactId>
    <version>1.0.0</version>

    <properties>
        <maven.compiler.source>1.8</maven.compiler.source>
        <maven.compiler.target>1.8</maven.compiler.target>
    </properties>
</project>
EOF

# Create source directory
mkdir -p src/main/java/com/example

# Create HelloWorld.java file
cat <<EOF > src/main/java/com/example/HelloWorld.java
package com.example;

public class HelloWorld {
    public static void main(String[] args) {
        System.out.println("Hello, Maven!");
    }
}
EOF

