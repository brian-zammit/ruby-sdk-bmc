# pnap_network_api

NetworkApi - the Ruby gem for the Networks API

Create, list, edit and delete public/private networks with the Network API. Use public networks to place multiple 
servers on the same network or VLAN. Assign new servers with IP addresses from the same CIDR range. Use private 
networks to avoid unnecessary egress data charges. Model your networks according to your business needs.<br>
<br>
<span class='pnap-api-knowledge-base-link'>
Knowledge base articles to help you can be found
<a href='https://phoenixnap.com/kb/bmc-server-management-via-api#multi-private-backend-network-api' target='_blank'>here</a>
</span><br>
<br>
<b>All URLs are relative to (https://api.phoenixnap.com/networks/v1/)</b>


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0
For more information, please visit [https://phoenixnap.com/](https://phoenixnap.com/)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build pnap_network_api.gemspec
```

Then either install the gem locally, replacing `<VERSION>` with the actual version:

```shell
gem install ./pnap_network_api-<VERSION>.gem
```

(for development, run `gem install --dev ./pnap_network_api-<VERSION>.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'pnap_network_api', '~> <VERSION>'

### Install from Git

To install this Gem from this repository, you'll need to get Bundler by doing `gem install bundler`. Add the following line in your Gemfile:

    gem 'pnap_network_api', git: 'https://github.com/phoenixnap/ruby-sdk-bmc-poc', glob: 'NetworkApi/*.gemspec'

If you'd like the development version:

    gem 'pnap_network_api', git: 'https://github.com/phoenixnap/ruby-sdk-bmc-poc', glob: 'NetworkApi/*.gemspec', branch: 'develop'

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
require 'pnap_network_api'

# Setup authorization
NetworkApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = NetworkApi::PrivateNetworksApi.new
opts = {
  location: 'PHX' # String | If present will filter the result by the given location of the Private Networks.
}

begin
  #List Private Networks.
  result = api_instance.private_networks_get(opts)
  p result
rescue NetworkApi::ApiError => e
  puts "Exception when calling PrivateNetworksApi->private_networks_get: #{e}"
end

```

Authorization can also be setup by using the [`oauth`](https://github.com/oauth-xx/oauth2) library:

```ruby
# Load the gem
require 'pnap_network_api'
require 'oauth2'

# Setup variables for getting a token.
client_id = 'YOUR_CLIENT_ID'
client_secret = 'YOUR_CLIENT_SECRET'
auth_url = 'https://auth.phoenixnap.com/auth/realms/BMC/protocol/openid-connect/token'


# Setup authorization
NetworkApi.configure do |config|
  # Retrieve the token using OAuth2.
  client = OAuth2::Client.new(client_id, client_secret, token_url: auth_url)
  token = client.client_credentials.get_token

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = token.token
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.phoenixnap.com/networks/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*NetworkApi::PrivateNetworksApi* | [**private_networks_get**](docs/PrivateNetworksApi.md#private_networks_get) | **GET** /private-networks | List Private Networks.
*NetworkApi::PrivateNetworksApi* | [**private_networks_network_id_delete**](docs/PrivateNetworksApi.md#private_networks_network_id_delete) | **DELETE** /private-networks/{privateNetworkId} | Delete a Private Network.
*NetworkApi::PrivateNetworksApi* | [**private_networks_network_id_get**](docs/PrivateNetworksApi.md#private_networks_network_id_get) | **GET** /private-networks/{privateNetworkId} | Get a Private Network.
*NetworkApi::PrivateNetworksApi* | [**private_networks_network_id_put**](docs/PrivateNetworksApi.md#private_networks_network_id_put) | **PUT** /private-networks/{privateNetworkId} | Update a Private Network.
*NetworkApi::PrivateNetworksApi* | [**private_networks_post**](docs/PrivateNetworksApi.md#private_networks_post) | **POST** /private-networks | Create a Private Network.
*NetworkApi::PublicNetworksApi* | [**public_networks_get**](docs/PublicNetworksApi.md#public_networks_get) | **GET** /public-networks | List Public Networks.
*NetworkApi::PublicNetworksApi* | [**public_networks_network_id_delete**](docs/PublicNetworksApi.md#public_networks_network_id_delete) | **DELETE** /public-networks/{publicNetworkId} | Delete a Public Network.
*NetworkApi::PublicNetworksApi* | [**public_networks_network_id_get**](docs/PublicNetworksApi.md#public_networks_network_id_get) | **GET** /public-networks/{publicNetworkId} | Get a Public Network.
*NetworkApi::PublicNetworksApi* | [**public_networks_network_id_ip_blocks_ip_block_id_delete**](docs/PublicNetworksApi.md#public_networks_network_id_ip_blocks_ip_block_id_delete) | **DELETE** /public-networks/{publicNetworkId}/ip-blocks/{ipBlockId} | Removes the IP Block from the Public Network.
*NetworkApi::PublicNetworksApi* | [**public_networks_network_id_ip_blocks_post**](docs/PublicNetworksApi.md#public_networks_network_id_ip_blocks_post) | **POST** /public-networks/{publicNetworkId}/ip-blocks | Adds an IP block to this public network.
*NetworkApi::PublicNetworksApi* | [**public_networks_network_id_patch**](docs/PublicNetworksApi.md#public_networks_network_id_patch) | **PATCH** /public-networks/{publicNetworkId} | Update Public Network's Details.
*NetworkApi::PublicNetworksApi* | [**public_networks_post**](docs/PublicNetworksApi.md#public_networks_post) | **POST** /public-networks | Create a public network.


## Documentation for Models

 - [NetworkApi::Error](docs/Error.md)
 - [NetworkApi::PrivateNetwork](docs/PrivateNetwork.md)
 - [NetworkApi::PrivateNetworkCreate](docs/PrivateNetworkCreate.md)
 - [NetworkApi::PrivateNetworkModify](docs/PrivateNetworkModify.md)
 - [NetworkApi::PrivateNetworkServer](docs/PrivateNetworkServer.md)
 - [NetworkApi::PublicNetwork](docs/PublicNetwork.md)
 - [NetworkApi::PublicNetworkCreate](docs/PublicNetworkCreate.md)
 - [NetworkApi::PublicNetworkIpBlock](docs/PublicNetworkIpBlock.md)
 - [NetworkApi::PublicNetworkMembership](docs/PublicNetworkMembership.md)
 - [NetworkApi::PublicNetworkModify](docs/PublicNetworkModify.md)


## Documentation for Authorization


### OAuth2


- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: 
- **Scopes**: 
  - bmc: Grants full access to bmc-api.
  - bmc.read: Grants read only access to bmc-api.

