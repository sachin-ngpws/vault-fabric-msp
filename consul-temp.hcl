# This denotes the start of the configuration section for Vault. All values
# contained in this section pertain to Vault.
vault {
  # This is the address of the Vault leader. The protocol (http(s)) portion
  # of the address is required.
  address      = "http://0.0.0.0:1234/"

  # This value can also be specified via the environment variable VAULT_TOKEN.
  #token        = "s.37eWUdW6Zcefvo6deQdaBc4l"

  # This should also be less than or around 1/3 of your TTL for a predictable
  # behaviour. Consult https://github.com/hashicorp/vault/issues/3414
  grace        = "1s"

  # This tells consul-template that the provided token is actually a wrapped
  # token that should be unwrapped using Vault's cubbyhole response wrapping
  # before being used. Consult Vault's cubbyhole response wrapping documentation
  # for more information.
  unwrap_token = false

  # This option tells consul-template to automatically renew the Vault token
  # given. If you are unfamiliar with Vault's architecture, Vault requires
  # tokens be renewed at some regular interval or they will be revoked. Consul
  # Template will automatically renew the token at half the lease duration of
  # the token. The default value is true, but this option can be disabled if
  # you want to renew the Vault token using an out-of-band process.
  renew_token  = true
}

template {
  source      = "/home/sachin/vault_pki/consul-vault/msp/signcerts/agent.crt.tpl"
  destination = "/home/sachin/vault_pki/consul-vault/msp/signcerts/agent.pem"
  # perms       = 0700
}

template {
  source      = "/home/sachin/vault_pki/consul-vault/msp/cacerts/ca.cert.tpl"
  destination = "/home/sachin/vault_pki/consul-vault/msp/cacerts/ca.pem"
  # perms       = 0700
}

template {
  source      = "/home/sachin/vault_pki/consul-vault/msp/keystore/agent.key.tpl"
  destination = "/home/sachin/vault_pki/consul-vault/msp/keystore/agent.key"
  # perms       = 0700
}