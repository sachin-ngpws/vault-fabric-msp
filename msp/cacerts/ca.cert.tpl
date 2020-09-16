{{ with secret "ordererCA/issue/msp" "common_name=Admin" "ttl=24h" "alt_names=localhost" "ip_sans=127.0.0.1"}}
{{ .Data.issuing_ca }}
{{ end }}
