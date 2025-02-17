=begin
#Tags API

#Tags are case-sensitive key-value pairs that simplify resource management. The Tag Manager API allows you to create and manage such tags to later assign them to related resources in your Bare Metal Cloud (through the respective resource apis) in order to group and categorize them.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/bmc-server-management-via-api#server-tag-manager-api' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/tag-manager/v1/)</b> 

The version of the OpenAPI document: 1.0
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

# Common files
require 'pnap_tag_api/api_client'
require 'pnap_tag_api/api_error'
require 'pnap_tag_api/version'
require 'pnap_tag_api/configuration'

# Models
require 'pnap_tag_api/models/delete_result'
require 'pnap_tag_api/models/error'
require 'pnap_tag_api/models/resource_assignment'
require 'pnap_tag_api/models/tag'
require 'pnap_tag_api/models/tag_create'
require 'pnap_tag_api/models/tag_update'

# APIs
require 'pnap_tag_api/api/tags_api'

module TagApi
  class << self
    # Customize default settings for the SDK using block.
    #   TagApi.configure do |config|
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
