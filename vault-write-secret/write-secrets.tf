resource "vault_generic_secret" "dev-database" {
  path = "secret/dev/database"

  data_json = base64decode("eyAidXNlcm5hbWUiOiJkZXZlbG9wZXIiLCAicGFzc3dvcmQiOiJwYXNzd29yZCJ9Cg==")
}

resource "vault_generic_secret" "staging-database" {
  path = "secret/staging/database"

  data_json = jsonencode(
    {
      "username":"postgresStaging",
      "password": "changeme"
    }
  )
}

data "vault_generic_secret" "dev" {
  depends_on = [vault_generic_secret.dev-database]
  path = "secret/dev/database"
}

output "database-password"{
  value = data.vault_generic_secret.dev.data["password"]
  sensitive = true
}

output "database-username"{
  value = data.vault_generic_secret.dev.data["username"]
  sensitive = true
}