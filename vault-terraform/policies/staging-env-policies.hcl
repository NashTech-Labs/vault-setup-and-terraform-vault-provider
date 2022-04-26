# Permits CRUD operation on secrets-v2
path "secret/data/dev/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# Encrypt data with 'payment' key
path "secret/data/staging/*" {
  capabilities = ["create","update","delete","read", "list"]
}

# List enabled secrets engines
path "secret/metadata/*" {
   capabilities = ["list"]
}

path "auth/token/create" {
  capabilities = ["read","update"]
}