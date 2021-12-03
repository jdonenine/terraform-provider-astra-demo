resource "astra_database" "demo_1" {
  name           = "demo_database_1"
  keyspace       = "demo_keyspace_1"
  cloud_provider = "gcp"
  region         = "us-east1"
}

resource "astra_keyspace" "demo_keyspace_2" {
  name        = "demo_keyspace_2"
  database_id = astra_database.demo_1.id
}