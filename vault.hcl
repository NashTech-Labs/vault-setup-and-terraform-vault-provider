storage "file" {
    path    = "/tmp/vault/data"
    node_id = "node1"
}

# Uncomment this section if you have tls certificates

listener "tcp" {
  address       = "0.0.0.0:8200"
  
  # comment this line if you have tls certificates

  tls_disable  = true
  
  # Uncomment this section if you have tls certificates
  // tls_cert_file = "path/to/cert/file"
  // tls_key_file  = "path/to/key/file"
}

api_addr = "http://127.0.0.1:8200"
cluster_addr = "https://127.0.0.1:8201"
disable_mlock = true
ui = true
