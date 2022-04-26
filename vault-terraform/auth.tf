#--------------------------------
# Enable userpass auth method
#--------------------------------

resource "vault_auth_backend" "userpass" {
  type = "userpass"

  tune {
    max_lease_ttl      = "120s"
    listing_visibility = "unauth"
  }
}

# Create a user, 'developer'
resource "vault_generic_endpoint" "developer" {
  depends_on           = [vault_auth_backend.userpass]
  path                 = "auth/userpass/users/developer"
  ignore_absent_fields = true

  data_json = <<EOT
{
  "policies": [""dev],
  "password": "changeme"
}
EOT
}

# Create a user, 'stakeholder'
resource "vault_generic_endpoint" "stakeholder" {
  depends_on = [vault_auth_backend.userpass]
  path       = "auth/userpass/users/stakeholder"
  ignore_absent_fields = true

  data_json = <<EOT
{
  "policies": ["staging"],
  "password": "changeme"
}
EOT
}

# Create a admin user
resource "vault_generic_endpoint" "admin" {
  depends_on = [vault_auth_backend.userpass]
  path       = "auth/userpass/users/admin"
  ignore_absent_fields = true

  data_json = <<EOT
{
  "policies": ["admins"],
  "password": "changeme"
}
EOT
}