# Dev servers have version 2 of KV secrets engine mounted by default, so will
# need these paths to grant permissions:
path "ordererCA/issue/msp" {
  capabilities = ["create", "update", "read"]
}
