=begin
#Networks API

#Create, list, edit and delete public/private networks with the Network API. Use public networks to place multiple  servers on the same network or VLAN. Assign new servers with IP addresses from the same CIDR range. Use private  networks to avoid unnecessary egress data charges. Model your networks according to your business needs.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/bmc-server-management-via-api#multi-private-backend-network-api' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/networks/v1/)</b> 

The version of the OpenAPI document: 1.0
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'
require 'json'

# Unit tests for NetworkApi::PublicNetworksApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PublicNetworksApi' do
  before do
    # run before each test
    @api_instance = NetworkApi::PublicNetworksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PublicNetworksApi' do
    it 'should create an instance of PublicNetworksApi' do
      expect(@api_instance).to be_instance_of(NetworkApi::PublicNetworksApi)
    end
  end

  # unit tests for public_networks_get
  # List Public Networks.
  # List all Public Networks owned by account.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :location If present will filter the result by the given location of the Public Networks.
  # @return [Array<PublicNetwork>]
  describe 'public_networks_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for public_networks_network_id_delete
  # Delete a Public Network.
  # Delete Public Network. The request is accepted only if no resources are members of this network. The IP Block(s) will be freed and can be re-used in the future.
  # @param public_network_id The Public Network identifier.
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'public_networks_network_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for public_networks_network_id_get
  # Get a Public Network.
  # Retrieve Public Network Details.
  # @param public_network_id The Public Network identifier.
  # @param [Hash] opts the optional parameters
  # @return [PublicNetwork]
  describe 'public_networks_network_id_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for public_networks_network_id_ip_blocks_ip_block_id_delete
  # Removes the IP Block from the Public Network.
  # Removes the IP Block from the Public Network. The result of this is that any traffic addressed to any IP within the block will not be routed to this network anymore. Please ensure that no resource members within this network have any IPs assigned from the IP Block being removed.
  # @param public_network_id The Public Network identifier.
  # @param ip_block_id The IP Block identifier.
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'public_networks_network_id_ip_blocks_ip_block_id_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for public_networks_network_id_ip_blocks_post
  # Adds an IP block to this public network.
  # Adds an IP block to this public network.
  # @param public_network_id The Public Network identifier.
  # @param [Hash] opts the optional parameters
  # @option opts [PublicNetworkIpBlock] :public_network_ip_block 
  # @return [PublicNetworkIpBlock]
  describe 'public_networks_network_id_ip_blocks_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for public_networks_network_id_patch
  # Update Public Network&#39;s Details.
  # Update Public Network&#39;s Details.
  # @param public_network_id The Public Network identifier.
  # @param [Hash] opts the optional parameters
  # @option opts [PublicNetworkModify] :public_network_modify 
  # @return [PublicNetwork]
  describe 'public_networks_network_id_patch test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for public_networks_post
  # Create a public network.
  # Create a public network.
  # @param [Hash] opts the optional parameters
  # @option opts [PublicNetworkCreate] :public_network_create 
  # @return [PublicNetwork]
  describe 'public_networks_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
