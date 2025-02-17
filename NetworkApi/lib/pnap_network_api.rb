=begin
#Networks API

#Create, list, edit and delete public/private networks with the Network API. Use public networks to place multiple  servers on the same network or VLAN. Assign new servers with IP addresses from the same CIDR range. Use private  networks to avoid unnecessary egress data charges. Model your networks according to your business needs.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/bmc-server-management-via-api#multi-private-backend-network-api' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/networks/v1/)</b> 

The version of the OpenAPI document: 1.0
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

# Common files
require 'pnap_network_api/api_client'
require 'pnap_network_api/api_error'
require 'pnap_network_api/version'
require 'pnap_network_api/configuration'

# Models
require 'pnap_network_api/models/error'
require 'pnap_network_api/models/private_network'
require 'pnap_network_api/models/private_network_create'
require 'pnap_network_api/models/private_network_modify'
require 'pnap_network_api/models/private_network_server'
require 'pnap_network_api/models/public_network'
require 'pnap_network_api/models/public_network_create'
require 'pnap_network_api/models/public_network_ip_block'
require 'pnap_network_api/models/public_network_membership'
require 'pnap_network_api/models/public_network_modify'

# APIs
require 'pnap_network_api/api/private_networks_api'
require 'pnap_network_api/api/public_networks_api'

module NetworkApi
  class << self
    # Customize default settings for the SDK using block.
    #   NetworkApi.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
