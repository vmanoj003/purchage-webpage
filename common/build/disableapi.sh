#!/bin/bash

# To see all the posible services...
# gcloud services list  --available --sort-by="NAME"

# To see all the disabled services...
# gcloud services list  --disabled --sort-by="NAME"

# Shared services
# disable Storage.
gcloud services disable storage-component.googleapis.com
# disable Bigtable.
gcloud services disable bigtable.googleapis.com
# disable Stackdriver
gcloud services disable stackdriver.googleapis.com
# disable Cloud SQL
gcloud services disable sql-component.googleapis.com
# disable Datastore
gcloud services disable datastore.googleapis.com


# The frontend application
# disable App Engine
gcloud services disable appengine.googleapis.com
# disable Pubsub
gcloud services disable pubsub.googleapis.com

# Image processor
# disable Cloud Vision API
gcloud services disable vision.googleapis.com
# disable Cloud Functions
gcloud services disable cloudfunctions.googleapis.com

# The product application
# disable Kubernetes Engine
gcloud services disable container.googleapis.com
# disable Bigquery
gcloud services disable bigquery-json.googleapis.com
# disable Container Registry
gcloud services disable containerregistry.googleapis.com 

# The ads application
# disable Compute Engine
gcloud services disable compute.googleapis.com
# disable Spanner
gcloud services disable spanner.googleapis.com  