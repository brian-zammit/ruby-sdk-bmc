=begin
#Tags API

#Tags are case-sensitive key-value pairs that simplify resource management. The Tag Manager API allows you to create and manage such tags to later assign them to related resources in your Bare Metal Cloud (through the respective resource apis) in order to group and categorize them.<br> <br> <span class='pnap-api-knowledge-base-link'> Knowledge base articles to help you can be found <a href='https://phoenixnap.com/kb/bmc-server-management-via-api#server-tag-manager-api' target='_blank'>here</a> </span><br> <br> <b>All URLs are relative to (https://api.phoenixnap.com/tag-manager/v1/)</b> 

The version of the OpenAPI document: 1.0
Contact: support@phoenixnap.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'cgi'

module TagApi
  class TagsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # List tags.
    # Retrieve all tags belonging to the BMC Account.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Query a tag by its name.
    # @return [Array<Tag>]
    def tags_get(opts = {})
      data, _status_code, _headers = tags_get_with_http_info(opts)
      data
    end

    # List tags.
    # Retrieve all tags belonging to the BMC Account.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Query a tag by its name.
    # @return [Array<(Array<Tag>, Integer, Hash)>] Array<Tag> data, response status code and response headers
    def tags_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.tags_get ...'
      end
      # resource path
      local_var_path = '/tags'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Tag>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"TagsApi.tags_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#tags_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Tag.
    # Create a tag with the provided information.
    # @param tag_create [TagCreate] The body containing the tag details.
    # @param [Hash] opts the optional parameters
    # @return [Tag]
    def tags_post(tag_create, opts = {})
      data, _status_code, _headers = tags_post_with_http_info(tag_create, opts)
      data
    end

    # Create a Tag.
    # Create a tag with the provided information.
    # @param tag_create [TagCreate] The body containing the tag details.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Tag, Integer, Hash)>] Tag data, response status code and response headers
    def tags_post_with_http_info(tag_create, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.tags_post ...'
      end
      # verify the required parameter 'tag_create' is set
      if @api_client.config.client_side_validation && tag_create.nil?
        fail ArgumentError, "Missing the required parameter 'tag_create' when calling TagsApi.tags_post"
      end
      # resource path
      local_var_path = '/tags'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(tag_create)

      # return_type
      return_type = opts[:debug_return_type] || 'Tag'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"TagsApi.tags_post",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#tags_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a Tag.
    # Delete the tag with the given ID.
    # @param tag_id [String] The tag&#39;s ID.
    # @param [Hash] opts the optional parameters
    # @return [DeleteResult]
    def tags_tag_id_delete(tag_id, opts = {})
      data, _status_code, _headers = tags_tag_id_delete_with_http_info(tag_id, opts)
      data
    end

    # Delete a Tag.
    # Delete the tag with the given ID.
    # @param tag_id [String] The tag&#39;s ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteResult, Integer, Hash)>] DeleteResult data, response status code and response headers
    def tags_tag_id_delete_with_http_info(tag_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.tags_tag_id_delete ...'
      end
      # verify the required parameter 'tag_id' is set
      if @api_client.config.client_side_validation && tag_id.nil?
        fail ArgumentError, "Missing the required parameter 'tag_id' when calling TagsApi.tags_tag_id_delete"
      end
      # resource path
      local_var_path = '/tags/{tagId}'.sub('{' + 'tagId' + '}', CGI.escape(tag_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DeleteResult'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"TagsApi.tags_tag_id_delete",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#tags_tag_id_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a Tag.
    # Retrieve the tag with the given ID
    # @param tag_id [String] The tag&#39;s ID.
    # @param [Hash] opts the optional parameters
    # @return [Tag]
    def tags_tag_id_get(tag_id, opts = {})
      data, _status_code, _headers = tags_tag_id_get_with_http_info(tag_id, opts)
      data
    end

    # Get a Tag.
    # Retrieve the tag with the given ID
    # @param tag_id [String] The tag&#39;s ID.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Tag, Integer, Hash)>] Tag data, response status code and response headers
    def tags_tag_id_get_with_http_info(tag_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.tags_tag_id_get ...'
      end
      # verify the required parameter 'tag_id' is set
      if @api_client.config.client_side_validation && tag_id.nil?
        fail ArgumentError, "Missing the required parameter 'tag_id' when calling TagsApi.tags_tag_id_get"
      end
      # resource path
      local_var_path = '/tags/{tagId}'.sub('{' + 'tagId' + '}', CGI.escape(tag_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Tag'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"TagsApi.tags_tag_id_get",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#tags_tag_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Modify a Tag.
    # Updates the tag with the given ID.
    # @param tag_id [String] The tag&#39;s ID.
    # @param tag_update [TagUpdate] The body containing the tag changes.
    # @param [Hash] opts the optional parameters
    # @return [Tag]
    def tags_tag_id_patch(tag_id, tag_update, opts = {})
      data, _status_code, _headers = tags_tag_id_patch_with_http_info(tag_id, tag_update, opts)
      data
    end

    # Modify a Tag.
    # Updates the tag with the given ID.
    # @param tag_id [String] The tag&#39;s ID.
    # @param tag_update [TagUpdate] The body containing the tag changes.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Tag, Integer, Hash)>] Tag data, response status code and response headers
    def tags_tag_id_patch_with_http_info(tag_id, tag_update, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TagsApi.tags_tag_id_patch ...'
      end
      # verify the required parameter 'tag_id' is set
      if @api_client.config.client_side_validation && tag_id.nil?
        fail ArgumentError, "Missing the required parameter 'tag_id' when calling TagsApi.tags_tag_id_patch"
      end
      # verify the required parameter 'tag_update' is set
      if @api_client.config.client_side_validation && tag_update.nil?
        fail ArgumentError, "Missing the required parameter 'tag_update' when calling TagsApi.tags_tag_id_patch"
      end
      # resource path
      local_var_path = '/tags/{tagId}'.sub('{' + 'tagId' + '}', CGI.escape(tag_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(tag_update)

      # return_type
      return_type = opts[:debug_return_type] || 'Tag'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['OAuth2']

      new_options = opts.merge(
        :operation => :"TagsApi.tags_tag_id_patch",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TagsApi#tags_tag_id_patch\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
