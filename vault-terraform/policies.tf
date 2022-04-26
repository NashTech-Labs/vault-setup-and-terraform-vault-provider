#---------------------
# Create policies
#---------------------

# Create admin policy in the root namespace
resource "vault_policy" "admin_policy" {
  name   = "admins"
  policy = file("policies/admin-policy.hcl")
}

# Create 'dev' policy
resource "vault_policy" "dev" {
  name   = "dev"
  policy = file("policies/dev-env-policies.hcl")
}

# create 'staging' policy
resource "vault_policy" "staging" {
  name   = "staging"
  policy = file("policies/staging-env-policies.hcl")
}