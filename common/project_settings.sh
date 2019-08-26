#!/bin/bash

# The name of the project to deploy services into.
PROJECT_NAME="purchase-webpage"

# Which default region should regional services use?
PROJECT_REGION="us-east4"

# Which App Engine Region?
# gcloud app regions list
APP_ENGINE_REGION="us-east4"

# Which default zone should zonal service use?
PROJECT_ZONE="us-east4-b"

# Used as a suffix for select service names.
ENV_TYPE="dev"

# Used as a prefix for select service names.
ORGANIZATION="retail-webpage"

# This is the Storage bucket used for public assets. 
# The entire bucket is public by default
PUBLIC_ASSETS="purchase-webpage-public-bucket"

# This is the Storage bucket used for private assets. 
# The entire bucket is private by default
PRIVATE_ASSETS="purchase-webpage-private-bucket"

# The name of the Pubsub topic to create / use
PUB_SUB_TOPIC="purchase-webpage-items"

# The name of the custom network for the product and ads services
SERVICES_NETWORK="purchase-webpage-app-network"

# The name of the product service subnet
PRODUCT_SUBNET="purchase-webpage-prod-app-network-subnet"

# The name of the product service subnet
ADS_SUBNET="purchase-webpage-ad-app-network-subnet"

# The name of the Kubernetes cluster used for the products service
PRODUCT_CLUSTER_NAME="purchase-webpage-app-clusters"

# The name of the spanner instance
PRODUCT_DB_INSTANCE_NAME="purchase-webpage-app-spanner-instance"

# The name of the spanner db
PRODUCT_DB_NAME="purchase-webpage-spanner-db" 

# The service account to use to launch the compute engine instances.
COMPUTE_ENGINE_SERVICE_ACCOUNT=$(gcloud iam service-accounts list --filter='displayName:"Compute Engine default service account"' --format='value(email)')

# The cloud function name
FUNCTION_NAME="purchase-webpage-upload"

# Bigtable settings...
# The name of our Bigtable instance. An instance is basically a container for our cluster.
BIGTABLE_INSTANCE_ID="$ORGANIZATION-bt-instance-$ENV_TYPE"
BIGTABLE_CLUSTER_ID="$ORGANIZATION-bt-cluster-$ENV_TYPE"
BIGTABLE_DISPLAY_NAME="$ORGANIZATION-bt-name-$ENV_TYPE"
BIGTABLE_TABLE_ID=items