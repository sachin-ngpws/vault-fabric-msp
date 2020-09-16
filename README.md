Overview
========

Running consul-template
-----------------------
* command to run consul-template
```
    consul-template -config "/home/sachin/vault_pki/consul-vault/consul-temp.hcl" -once
```

Vault setup
-----------
* for dev vault docker
```
    docker run --cap-add=IPC_LOCK -e 'VAULT_DEV_ROOT_TOKEN_ID=myroot' -e 'VAULT_DEV_LISTEN_ADDRESS=0.0.0.0:1234' --network host --name vault-server -d vault
```
* for setting up the policy
```
    vault policy write template consul-template-policy.hcl
```
* creating the token
```
    vault token create -policy=template
```
* add it to the **consul-temp.hcl** file
