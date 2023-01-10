# frozen_string_literal: true

require 'yaml'
require 'yaml/store'

# Main Store settings loader based on:
#
# -  ./config.yaml
#
# Example config should look like this:
#
# app:
#   store: STORE1
#   build: 0.0.1
#   key: y0uRm4g1ck3y
#   mode: development
# storage:
#   host: localhost
#   port: 7700
#   key: s7or4g3pa$$w0rd
