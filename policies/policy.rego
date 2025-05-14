package precommit

# Entrada: informações sobre o commit
default allow = false

allow {
    input.scan_hash_exists == true
    input.scan_hash_matches == true
}

errors = {
    "missing_hash": input.scan_hash_exists == false,
    "hash_mismatch": input.scan_hash_matches == false
}