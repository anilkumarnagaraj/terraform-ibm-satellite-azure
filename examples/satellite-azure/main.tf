#####################################################
# IBM Cloud Satellite -  Azure
# Copyright 2022 IBM
#####################################################

###################################################################
# Provision satellite location on IBM cloud with Azure host
###################################################################
module "satellite-azure" {
  source = "../.."

  ################# IBM cloud & Azure cloud authentication variables #######################
  ibmcloud_api_key           = var.ibmcloud_api_key
  ibm_resource_group         = var.ibm_resource_group
  az_subscription_id         = var.az_subscription_id
  az_client_id               = var.az_client_id
  az_tenant_id               = var.az_tenant_id
  az_client_secret           = var.az_client_secret
  az_resource_group          = var.az_resource_group
  is_az_resource_group_exist = var.is_az_resource_group_exist
  az_region                  = var.az_region
  az_resource_prefix         = var.az_resource_prefix

  ################# Satellite location resource variables #######################
  is_location_exist    = var.is_location_exist
  location             = var.location
  managed_from         = var.managed_from
  location_zones       = var.location_zones
  location_bucket      = var.location_bucket
  host_labels          = var.host_labels
  satellite_host_count = var.satellite_host_count
  addl_host_count      = var.addl_host_count

  ################# Satellite Cluster resource variables #######################
  create_cluster             = var.create_cluster
  cluster                    = var.cluster
  cluster_host_labels        = var.cluster_host_labels
  create_cluster_worker_pool = var.create_cluster_worker_pool
  worker_pool_name           = var.worker_pool_name
  worker_pool_host_labels    = var.worker_pool_host_labels
  create_timeout             = var.create_timeout
  update_timeout             = var.update_timeout
  delete_timeout             = var.delete_timeout
}