# pnap_rancher_api

RancherApi - the Ruby gem for the Rancher Solution API

Simplify enterprise-grade Kubernetes cluster operations and management with Rancher on Bare Metal Cloud.
Deploy Kubernetes clusters using a few API calls.<br>
<br>
<span class='pnap-api-knowledge-base-link'>
Knowledge base articles to help you can be found
<a href='https://phoenixnap.com/kb/rancher-bmc-integration-kubernetes' target='_blank'>here</a>
</span><br>
<br>
<b>All URLs are relative to (https://api.phoenixnap.com/solutions/rancher/v1beta)</b>


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 0.1
For more information, please visit [https://phoenixnap.com/](https://phoenixnap.com/)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build pnap_rancher_api.gemspec
```

Then either install the gem locally, replacing `<VERSION>` with the actual version:

```shell
gem install ./pnap_rancher_api-<VERSION>.gem
```

(for development, run `gem install --dev ./pnap_rancher_api-<VERSION>.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'pnap_rancher_api', '~> <VERSION>'

### Install from Git

To install this Gem from this repository, you'll need to get Bundler by doing `gem install bundler`. Add the following line in your Gemfile:

    gem 'pnap_rancher_api', git: 'https://github.com/phoenixnap/ruby-sdk-bmc-poc', glob: 'RancherApi/*.gemspec'

If you'd like the development version:

    gem 'pnap_rancher_api', git: 'https://github.com/phoenixnap/ruby-sdk-bmc-poc', glob: 'RancherApi/*.gemspec', branch: 'develop'

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
require 'pnap_rancher_api'

# Setup authorization
RancherApi.configure do |config|
  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = RancherApi::ClustersApi.new

begin
  #Cluster list.
  result = api_instance.clusters_get
  p result
rescue RancherApi::ApiError => e
  puts "Exception when calling ClustersApi->clusters_get: #{e}"
end

```

Authorization can also be setup by using the [`oauth`](https://github.com/oauth-xx/oauth2) library:

```ruby
# Load the gem
require 'pnap_rancher_api'
require 'oauth2'

# Setup variables for getting a token.
client_id = 'YOUR_CLIENT_ID'
client_secret = 'YOUR_CLIENT_SECRET'
auth_url = 'https://auth.phoenixnap.com/auth/realms/BMC/protocol/openid-connect/token'


# Setup authorization
RancherApi.configure do |config|
  # Retrieve the token using OAuth2.
  client = OAuth2::Client.new(client_id, client_secret, token_url: auth_url)
  token = client.client_credentials.get_token

  # Configure OAuth2 access token for authorization: OAuth2
  config.access_token = token.token
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.phoenixnap.com/solutions/rancher/v1beta*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*RancherApi::ClustersApi* | [**clusters_get**](docs/ClustersApi.md#clusters_get) | **GET** /clusters | Cluster list.
*RancherApi::ClustersApi* | [**clusters_id_delete**](docs/ClustersApi.md#clusters_id_delete) | **DELETE** /clusters/{id} | Delete a cluster.
*RancherApi::ClustersApi* | [**clusters_id_get**](docs/ClustersApi.md#clusters_id_get) | **GET** /clusters/{id} | Retrieve a Cluster
*RancherApi::ClustersApi* | [**clusters_post**](docs/ClustersApi.md#clusters_post) | **POST** /clusters | Create a Rancher Server Deployment.


## Documentation for Models

 - [RancherApi::Cluster](docs/Cluster.md)
 - [RancherApi::DeleteResult](docs/DeleteResult.md)
 - [RancherApi::Error](docs/Error.md)
 - [RancherApi::Node](docs/Node.md)
 - [RancherApi::NodePool](docs/NodePool.md)
 - [RancherApi::RancherClusterCertificates](docs/RancherClusterCertificates.md)
 - [RancherApi::RancherClusterConfig](docs/RancherClusterConfig.md)
 - [RancherApi::RancherServerMetadata](docs/RancherServerMetadata.md)
 - [RancherApi::SshConfig](docs/SshConfig.md)
 - [RancherApi::WorkloadClusterConfig](docs/WorkloadClusterConfig.md)


## Documentation for Authorization


### OAuth2


- **Type**: OAuth
- **Flow**: application
- **Authorization URL**: 
- **Scopes**: 
  - bmc: Grants full access to bmc-api.
  - bmc.read: Grants read only access to bmc-api.

