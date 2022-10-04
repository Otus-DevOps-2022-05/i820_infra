provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

module "vpc" {
  source       = "../modules/vpc"
  network_name = "reddit-app-network-stage"
  subnet_name  = "reddit-app-subnet-stage"
}

module "db" {
  source          = "../modules/db"
  public_key_path = var.public_key_path
  db_disk_image   = var.db_disk_image
  subnet_id       = module.vpc.subnet_id
  resource_name   = "db-stage"
}

module "app" {
  source          = "../modules/app"
  public_key_path = var.public_key_path
  app_disk_image  = var.app_disk_image
  subnet_id       = module.vpc.subnet_id
  resource_name   = "app-stage"
  database_url    = module.db.internal_ip_address_db
}
