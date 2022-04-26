# Permits CRUD operation on secrets-v2
path "secret/data/dev/*"{
  capabilities = ["create", "read", "update", "delete", "list"]
}

path "secret/data/staging/*" {
  capabilities = ["deny"]
}

# List enabled secrets engines
path "secret/metadata/*" {
   capabilities = ["list"]
}

path "auth/token/create" {
  capabilities = ["read","update"]
}