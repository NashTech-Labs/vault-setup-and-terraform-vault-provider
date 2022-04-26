# Introduction to Hashicorp Vault

This template helps to setup a vault server for learning purpose and for a quickstart.
Along with that you can easily use the CLI command and the vault terraform provider which is already given in this template.

### Steps to setup the vault server.

1. Install vault from the official link: https://learn.hashicorp.com/tutorials/vault/getting-started-install 
2. After installing and verifying the vault, run below command to get started:

        vault server --config vault.hcl

3. Open new terminal and initialize the vault using below command:

        vault operator init

4. You will get unseal key and root token. Save them in some place and proceed ahead for the unseal part. To unseal use below command.

        vault operator unseal <unseal-key-1>
        vault operator unseal <unseal-key-2>
        vault operator unseal <unseal-key-3>

5. After you are able to unseal the vault, export the vault address environment varibale.

        export VAULT_ADDR=http://127.0.0.1:8200

6. Now, login into the server using below command:

        vault login -method=token

7. Put your root token and your logged in successfully.
8. Now run the terraform scripts using below commands:

        terraform validate
        terraform plan
        terraform apply