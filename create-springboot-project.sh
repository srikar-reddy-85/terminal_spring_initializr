##!/bin/bash
#
## Prompt the user for inputs
#read -p "Enter the project type (default: maven-project): " type
#type=${type:-maven-project}
#
#read -p "Enter the programming language (default: java): " language
#language=${language:-java}
#
#read -p "Enter Spring Boot version (default: 3.3.5): " bootVersion
#bootVersion=${bootVersion:-3.3.5}
#
#read -p "Enter base directory (e.g., product-service): " baseDir
#
#read -p "Enter groupId (e.g., com.example): " groupId
#read -p "Enter artifactId (e.g., product-service): " artifactId
#read -p "Enter project name (e.g., product-service): " name
#read -p "Enter project description: " description
#read -p "Enter package name (e.g., com.example.demo): " packageName
#
#read -p "Enter packaging type (default: jar): " packaging
#packaging=${packaging:-jar}
#
#read -p "Enter Java version (default: 17): " javaVersion
#javaVersion=${javaVersion:-17}
#
#read -p "Enter dependencies (comma-separated, e.g., web,data-mongodb,lombok): " dependencies
#
## Encode URL parameters to handle spaces and special characters
#description_encoded=$(echo "$description" | sed 's/ /%20/g')
#
## Construct the URL
#url="https://start.spring.io/starter.zip?type=${type}&language=${language}&bootVersion=${bootVersion}&baseDir=${baseDir}&groupId=${groupId}&artifactId=${artifactId}&name=${name}&description=${description_encoded}&packageName=${packageName}&packaging=${packaging}&javaVersion=${javaVersion}&dependencies=${dependencies}"
#
## Download the Spring Boot project
#curl -X GET "$url" -o "${baseDir}.zip"
#
## Check if the file was downloaded
#if [ $? -eq 0 ]; then
#  echo "Spring Boot project ${baseDir}.zip created successfully."
#else
#  echo "Failed to create Spring Boot project. Please check your inputs and try again."
#fi

#<V1>===============================================================================================================================

# Declare available dependencies array
# available_dependencies=(
#   "activemq" "actuator" "amqp" "amqp-streams" "artemis" "azure-active-directory" "azure-cosmos-db" "azure-keyvault"
#   "azure-storage" "azure-support" "batch" "cache" "camel" "cloud-bus" "cloud-config-client" "cloud-config-server"
#   "cloud-contract-stub-runner" "cloud-contract-verifier" "cloud-eureka" "cloud-eureka-server" "cloud-feign"
#   "cloud-function" "cloud-gateway" "cloud-gateway-reactive" "cloud-gcp" "cloud-gcp-pubsub" "cloud-gcp-storage"
#   "cloud-loadbalancer" "cloud-resilience4j" "cloud-starter" "cloud-starter-consul-config" "cloud-starter-consul-discovery"
#   "cloud-starter-vault-config" "cloud-starter-zookeeper-config" "cloud-starter-zookeeper-discovery" "cloud-stream"
#   "cloud-task" "codecentric-spring-boot-admin-client" "codecentric-spring-boot-admin-server" "configuration-processor"
#   "data-cassandra" "data-cassandra-reactive" "data-couchbase" "data-couchbase-reactive" "data-elasticsearch" "data-jdbc"
#   "data-jpa" "data-ldap" "data-mongodb" "data-mongodb-reactive" "data-neo4j" "data-r2dbc" "data-redis" "data-redis-reactive"
#   "data-rest" "data-rest-explorer" "datadog" "db2" "derby" "devtools" "dgs-codegen" "distributed-tracing" "docker-compose"
#   "dynatrace" "flyway" "freemarker" "graphite" "graphql" "groovy-templates" "h2" "hateoas" "hsql" "htmx" "influx" "integration"
#   "jdbc" "jersey" "jooq" "jte" "kafka" "kafka-streams" "liquibase" "lombok" "mail" "mariadb" "modulith" "mustache" "mybatis"
#   "mysql" "native" "netflix-dgs" "new-relic" "oauth2-authorization-server" "oauth2-client" "oauth2-resource-server" "okta"
#   "oracle" "otlp-metrics" "postgresql" "prometheus" "pulsar" "pulsar-reactive" "quartz" "restdocs" "rsocket" "sbom-cyclone-dx"
#   "scs-config-client" "scs-service-registry" "security" "sentry" "session" "solace" "spring-ai-anthropic" "spring-ai-azure-openai"
#   "spring-ai-bedrock" "spring-ai-markdown-document-reader" "spring-ai-mistral" "spring-ai-ollama" "spring-ai-openai"
#   "spring-ai-pdf-document-reader" "spring-ai-postgresml" "spring-ai-stabilityai" "spring-ai-tika-document-reader"
#   "spring-ai-transformers" "spring-ai-vectordb-azure" "spring-ai-vectordb-cassandra" "spring-ai-vectordb-chroma"
#   "spring-ai-vectordb-elasticsearch" "spring-ai-vectordb-milvus" "spring-ai-vectordb-mongodb-atlas" "spring-ai-vectordb-neo4j"
#   "spring-ai-vectordb-oracle" "spring-ai-vectordb-pgvector" "spring-ai-vectordb-pinecone" "spring-ai-vectordb-qdrant"
#   "spring-ai-vectordb-redis" "spring-ai-vectordb-typesense" "spring-ai-vectordb-weaviate" "spring-ai-vertexai-embeddings"
#   "spring-ai-vertexai-gemini" "spring-ai-vertexai-palm2" "spring-shell" "sqlserver" "testcontainers" "thymeleaf" "timefold-solver"
#   "unboundid-ldap" "vaadin" "validation" "wavefront" "web" "web-services" "webflux" "websocket" "zipkin"
# )
#
# echo "Select dependencies for your Spring Boot project:"
# echo "Available dependencies:"
# for i in "${!available_dependencies[@]}"; do
#   echo "$((i + 1)). ${available_dependencies[$i]}"
# done
#
# # Initialize selected dependencies
# selected_dependencies=()
#
# # Dependency selection loop
# while true; do
#   read -p "Enter the number of a dependency to add (or press Enter to finish): " dep_num
#   if [[ -z $dep_num ]]; then
#     break
#   fi
#   if ((dep_num >= 1 && dep_num <= ${#available_dependencies[@]})); then
#     selected_dependencies+=("${available_dependencies[$((dep_num - 1))]}")
#     echo "Added: ${available_dependencies[$((dep_num - 1))]}"
#   else
#     echo "Invalid choice, please select a valid number."
#   fi
# done
#
# # Join selected dependencies into a comma-separated string
# dependencies=$(
#   IFS=,
#   echo "${selected_dependencies[*]}"
# )
#
# # Prompt for other project details with defaults where necessary
# read -p "Enter the project type (default: maven-project): " type
# type=${type:-maven-project}
#
# read -p "Enter the programming language (default: java): " language
# language=${language:-java}
#
# read -p "Enter Spring Boot version (default: 3.3.5): " bootVersion
# bootVersion=${bootVersion:-3.3.5}
#
# read -p "Enter base directory (e.g., product-service): " baseDir
# baseDir=${baseDir:-product-service}
#
# read -p "Enter groupId (e.g., com.example): " groupId
# read -p "Enter artifactId (e.g., product-service): " artifactId
# read -p "Enter project name (e.g., product-service): " name
# read -p "Enter project description: " description
# read -p "Enter package name (e.g., com.example.demo): " packageName
#
# read -p "Enter packaging type (default: jar): " packaging
# packaging=${packaging:-jar}
#
# read -p "Enter Java version (default: 17): " javaVersion
# javaVersion=${javaVersion:-17}
#
# # URL encoding for description
# description_encoded=$(echo "$description" | sed 's/ /%20/g' | sed 's/&/%26/g')
#
# # Construct the URL
# url="https://start.spring.io/starter.zip?type=${type}&language=${language}&bootVersion=${bootVersion}&baseDir=${baseDir}&groupId=${groupId}&artifactId=${artifactId}&name=${name}&description=${description_encoded}&packageName=${packageName}&packaging=${packaging}&javaVersion=${javaVersion}&dependencies=${dependencies}"
# echo ${url}
# # Download the Spring Boot project
# curl -X GET "$url" -o "${baseDir}.zip"
#
# # # Check if the file was downloaded
# # if [ $? -eq 0 ]; then
# #   echo "Spring Boot project ${baseDir}.zip created successfully."
# # else
# #   echo "Failed to create Spring Boot project. Please check your inputs and try again."
# # fi
# # Check if the file was downloaded
# if [ $? -eq 0 ]; then
#   echo "Spring Boot project ${baseDir}.zip created successfully."
#
#   # Unzip the downloaded project
#   unzip "${baseDir}.zip" -d "${baseDir}"
#   echo "Unzipped to ${baseDir}/"
#
#   # Delete the zip file
#   rm "${baseDir}.zip"
#   echo "Deleted ${baseDir}.zip."
# else
#   echo "Failed to create Spring Boot project. Please check your inputs and try again."
# fi
#
#
#
#<V2>===============================================================================================================================

available_dependencies=(
  "activemq" "actuator" "amqp" "amqp-streams" "artemis" "azure-active-directory" "azure-cosmos-db" "azure-keyvault"
  "azure-storage" "azure-support" "batch" "cache" "camel" "cloud-bus" "cloud-config-client" "cloud-config-server"
  "cloud-contract-stub-runner" "cloud-contract-verifier" "cloud-eureka" "cloud-eureka-server" "cloud-feign"
  "cloud-function" "cloud-gateway" "cloud-gateway-reactive" "cloud-gcp" "cloud-gcp-pubsub" "cloud-gcp-storage"
  "cloud-loadbalancer" "cloud-resilience4j" "cloud-starter" "cloud-starter-consul-config" "cloud-starter-consul-discovery"
  "cloud-starter-vault-config" "cloud-starter-zookeeper-config" "cloud-starter-zookeeper-discovery" "cloud-stream"
  "cloud-task" "codecentric-spring-boot-admin-client" "codecentric-spring-boot-admin-server" "configuration-processor"
  "data-cassandra" "data-cassandra-reactive" "data-couchbase" "data-couchbase-reactive" "data-elasticsearch" "data-jdbc"
  "data-jpa" "data-ldap" "data-mongodb" "data-mongodb-reactive" "data-neo4j" "data-r2dbc" "data-redis" "data-redis-reactive"
  "data-rest" "data-rest-explorer" "datadog" "db2" "derby" "devtools" "dgs-codegen" "distributed-tracing" "docker-compose"
  "dynatrace" "flyway" "freemarker" "graphite" "graphql" "groovy-templates" "h2" "hateoas" "hsql" "htmx" "influx" "integration"
  "jdbc" "jersey" "jooq" "jte" "kafka" "kafka-streams" "liquibase" "lombok" "mail" "mariadb" "modulith" "mustache" "mybatis"
  "mysql" "native" "netflix-dgs" "new-relic" "oauth2-authorization-server" "oauth2-client" "oauth2-resource-server" "okta"
  "oracle" "otlp-metrics" "postgresql" "prometheus" "pulsar" "pulsar-reactive" "quartz" "restdocs" "rsocket" "sbom-cyclone-dx"
  "scs-config-client" "scs-service-registry" "security" "sentry" "session" "solace" "spring-ai-anthropic" "spring-ai-azure-openai"
  "spring-ai-bedrock" "spring-ai-markdown-document-reader" "spring-ai-mistral" "spring-ai-ollama" "spring-ai-openai"
  "spring-ai-pdf-document-reader" "spring-ai-postgresml" "spring-ai-stabilityai" "spring-ai-tika-document-reader"
  "spring-ai-transformers" "spring-ai-vectordb-azure" "spring-ai-vectordb-cassandra" "spring-ai-vectordb-chroma"
  "spring-ai-vectordb-elasticsearch" "spring-ai-vectordb-milvus" "spring-ai-vectordb-mongodb-atlas" "spring-ai-vectordb-neo4j"
  "spring-ai-vectordb-oracle" "spring-ai-vectordb-pgvector" "spring-ai-vectordb-pinecone" "spring-ai-vectordb-qdrant"
  "spring-ai-vectordb-redis" "spring-ai-vectordb-typesense" "spring-ai-vectordb-weaviate" "spring-ai-vertexai-embeddings"
  "spring-ai-vertexai-gemini" "spring-ai-vertexai-palm2" "spring-shell" "sqlserver" "testcontainers" "thymeleaf" "timefold-solver"
  "unboundid-ldap" "vaadin" "validation" "wavefront" "web" "web-services" "webflux" "websocket" "zipkin"
)

# Initialize selected dependencies
selected_dependencies=()

# Dependency search loop
while true; do
  read -p "Enter a search term for dependencies (or press Enter to finish): " search_term
  if [[ -z $search_term ]]; then
    break
  fi

  # Filter dependencies based on the search term
  matching_dependencies=()
  for dep in "${available_dependencies[@]}"; do
    if [[ "$dep" =~ $search_term ]]; then
      matching_dependencies+=("$dep")
    fi
  done

  # Display matching dependencies
  if [ ${#matching_dependencies[@]} -gt 0 ]; then
    echo "Found matching dependencies:"
    for i in "${!matching_dependencies[@]}"; do
      echo "$((i + 1)). ${matching_dependencies[$i]}"
    done
  else
    echo "No matching dependencies found."
  fi

  # Let user select dependencies from the search results
  while true; do
    read -p "Enter the number of a dependency to add (or press Enter to continue): " dep_num
    if [[ -z $dep_num ]]; then
      break
    fi
    if ((dep_num >= 1 && dep_num <= ${#matching_dependencies[@]})); then
      selected_dependencies+=("${matching_dependencies[$((dep_num - 1))]}")
      echo "Added: ${matching_dependencies[$((dep_num - 1))]}"
    else
      echo "Invalid choice, please select a valid number."
    fi
  done
done

# Join selected dependencies into a comma-separated string
dependencies=$(
  IFS=,
  echo "${selected_dependencies[*]}"
)

# Prompt for other project details with defaults where necessary
read -p "Enter the project type (default: maven-project): " type
type=${type:-maven-project}

read -p "Enter the programming language (default: java): " language
language=${language:-java}

read -p "Enter Spring Boot version (default: 3.3.5): " bootVersion
bootVersion=${bootVersion:-3.3.5}

read -p "Enter base directory (e.g., product-service): " baseDir
baseDir=${baseDir:-product-service}

read -p "Enter groupId (e.g., com.example): " groupId
read -p "Enter artifactId (e.g., product-service): " artifactId
read -p "Enter project name (e.g., product-service): " name
read -p "Enter project description: " description
read -p "Enter package name (e.g., com.example.demo): " packageName

read -p "Enter packaging type (default: jar): " packaging
packaging=${packaging:-jar}

read -p "Enter Java version (default: 17): " javaVersion
javaVersion=${javaVersion:-17}

# URL encoding for description
description_encoded=$(echo "$description" | sed 's/ /%20/g' | sed 's/&/%26/g')

# Construct the URL
url="https://start.spring.io/starter.zip?type=${type}&language=${language}&bootVersion=${bootVersion}&baseDir=${baseDir}&groupId=${groupId}&artifactId=${artifactId}&name=${name}&description=${description_encoded}&packageName=${packageName}&packaging=${packaging}&javaVersion=${javaVersion}&dependencies=${dependencies}"
echo ${url}

# Download the Spring Boot project
curl -X GET "$url" -o "${baseDir}.zip"

# Check if the file was downloaded
if [ $? -eq 0 ]; then
  echo "Spring Boot project ${baseDir}.zip created successfully."

  # Unzip the downloaded project
  unzip "${baseDir}.zip" -d "${baseDir}"
  echo "Unzipped to ${baseDir}/"

  # Delete the zip file
  rm "${baseDir}.zip"
  echo "Deleted ${baseDir}.zip."
else
  echo "Failed to create Spring Boot project. Please check your inputs and try again."
fi
