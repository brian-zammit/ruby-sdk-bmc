# pnap_ip_api

IpApi - the Ruby gem for the IP Addresses API

Public IP blocks are a set of contiguous IPs that allow you to access your servers or networks from the internet.
Use the IP Addresses API to request and delete IP blocks.<br>
<br>
<span class='pnap-api-knowledge-base-link'>
Knowledge base articles to help you can be found
<a href='https://phoenixnap.com/kb/public-ip-management#bmc-public-ip-allocations-api' target='_blank'>here</a>
</span><br>
<br>
<b>All URLs are relative to (https://api.phoenixnap.com/ips/v1/)</b>


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
For more information, please visit [https://phoenixnap.com/](https://phoenixnap.com/)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build pnap_ip_api.gemspec
```

Then either install the gem locally, replacing `<VERSION>` with the actual version:

```shell
gem install ./pnap_ip_api-<VERSION>.gem
```

(for development, run `gem install --dev ./pnap_ip_api-<VERSION>.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'pnap_ip_api', '~> <VERSION>'

### Install from Git

To install this Gem from this repository, you'll need to get Bundler by doing `gem install bundler`. Add the following line in your Gemfile:

    gem 'pnap_ip_api', git: 'https://github.com/phoenixnap/ruby-sdk-bmc-poc', glob: 'IpApi/*.gemspec'

If you'd like the development version:

    gem 'pnap_ip_api', git: 'https://github.com/phoenixnap/ruby-sdk-bmc-poc', glob: 'IpApi/*.gemspec', branch: 'develop'

Then run `bundle install`.

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'pnap_ip_api'

# Setup authorization
IpApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = IpApi::IPBlocksApi.new
opts = {
  tag: ['inner_example'] # Array<String> | List of tags, in the form tagName.tagValue, to filter by.
}

begin
  #List IP Blocks.
  result = api_instance.ip_blocks_get(opts)
  p result
rescue IpApi::ApiError => e
  puts "Exception when calling IPBlocksApi->ip_blocks_get: #{e}"
end

```

Authorization can also be setup by using the [`oauth`](https://github.com/oauth-xx/oauth2) library:

```ruby
# Load the gem
require 'pnap_ip_api'
require 'oauth2'

# Setup variables for getting a token.
client_id = 'YOUR_CLIENT_ID'
client_secret = 'YOUR_CLIENT_SECRET'
auth_url = 'https://auth.phoenixnap.com/auth/realms/BMC/protocol/openid-connect/token'


# Setup authorization
IpApi.configure do |config|
  # Retrieve the token using OAuth2.
  client = OAuth2::Client.new(client_id, client_secret, token_url: auth_url)
  token = client.client_credentials.get_token

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = token.token
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.phoenixnap.com/ips/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*IpApi::IPBlocksApi* | [**ip_blocks_get**](docs/IPBlocksApi.md#ip_blocks_get) | **GET** /ip-blocks | List IP Blocks.
*IpApi::IPBlocksApi* | [**ip_blocks_ip_block_id_delete**](docs/IPBlocksApi.md#ip_blocks_ip_block_id_delete) | **DELETE** /ip-blocks/{ipBlockId} | Delete IP Block.
*IpApi::IPBlocksApi* | [**ip_blocks_ip_block_id_get**](docs/IPBlocksApi.md#ip_blocks_ip_block_id_get) | **GET** /ip-blocks/{ipBlockId} | Get IP Block.
*IpApi::IPBlocksApi* | [**ip_blocks_ip_block_id_patch**](docs/IPBlocksApi.md#ip_blocks_ip_block_id_patch) | **PATCH** /ip-blocks/{ipBlockId} | Update IP block.
*IpApi::IPBlocksApi* | [**ip_blocks_ip_block_id_tags_put**](docs/IPBlocksApi.md#ip_blocks_ip_block_id_tags_put) | **PUT** /ip-blocks/{ipBlockId}/tags | Overwrite tags assigned for IP Block.
*IpApi::IPBlocksApi* | [**ip_blocks_post**](docs/IPBlocksApi.md#ip_blocks_post) | **POST** /ip-blocks | Create an IP Block.


## Documentation for Models

 - [IpApi::DeleteIpBlockResult](docs/DeleteIpBlockResult.md)
 - [IpApi::Error](docs/Error.md)
 - [IpApi::IpBlock](docs/IpBlock.md)
 - [IpApi::IpBlockCreate](docs/IpBlockCreate.md)
 - [IpApi::IpBlockPatch](docs/IpBlockPatch.md)
 - [IpApi::TagAssignment](docs/TagAssignment.md)
 - [IpApi::TagAssignmentRequest](docs/TagAssignmentRequest.md)


## Documentation for Authorization


### OAuth2


- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: 
- **Scopes**: 
  - bmc: Grants full access to bmc-api.
  - bmc.read: Grants read only access to bmc-api.

