# Manage auth methods broadly across Vault
path "auth/*" {
  capabilities = ["create","update","delete","read", "list"]
}

# create, update, delete, read and list auth methods

path "sys/auth/*" {
  capabilities = ["create","update","delete","read", "list"]
}

# List enabled secrets engines
path "sys/mounts"{
  capabilities = ["read", "list"]
}

# List, create, update, and delete key/value secrets at secret/
path "secret/*"{
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Read health checks
path "sys/health"{
  capabilities = ["read", "sudo"]
}
