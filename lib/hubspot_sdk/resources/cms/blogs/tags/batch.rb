# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Tags
          class Batch
            # Delete the Blog Tag objects identified in the request body.
            #
            # @overload delete(inputs:, request_options: {})
            #
            # @param inputs [Array<String>] Strings to input.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubspotSDK::Models::Cms::Blogs::Tags::BatchDeleteParams
            def delete(params)
              parsed, options = HubspotSDK::Cms::Blogs::Tags::BatchDeleteParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/blogs/2026-03/tags/batch/archive",
                headers: {"content-type" => "*/*"},
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # Create the Blog Tag objects detailed in the request body.
            #
            # @overload create_batch(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::Cms::Blogs::Tag>] Blog tags to input.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [StringIO]
            #
            # @see HubspotSDK::Models::Cms::Blogs::Tags::BatchCreateBatchParams
            def create_batch(params)
              parsed, options = HubspotSDK::Cms::Blogs::Tags::BatchCreateBatchParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/blogs/2026-03/tags/batch/create",
                headers: {"content-type" => "*/*", "accept" => "*/*"},
                body: parsed,
                model: StringIO,
                options: options
              )
            end

            # Retrieve the Blog Tag objects identified in the request body.
            #
            # @overload get_batch(inputs:, archived: nil, request_options: {})
            #
            # @param inputs [Array<String>] Body param: Strings to input.
            #
            # @param archived [Boolean] Query param: Whether to return only results that have been archived.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [StringIO]
            #
            # @see HubspotSDK::Models::Cms::Blogs::Tags::BatchGetBatchParams
            def get_batch(params)
              query_params = [:archived]
              parsed, options = HubspotSDK::Cms::Blogs::Tags::BatchGetBatchParams.dump_request(params)
              query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
              @client.request(
                method: :post,
                path: "cms/blogs/2026-03/tags/batch/read",
                query: query,
                headers: {"content-type" => "*/*", "accept" => "*/*"},
                body: parsed.except(*query_params),
                model: StringIO,
                options: options
              )
            end

            # Update the Blog Tag objects identified in the request body.
            #
            # @overload update_batch(inputs:, archived: nil, request_options: {})
            #
            # @param inputs [Array<Object>] Body param: JSON nodes to input.
            #
            # @param archived [Boolean] Query param: Whether to return only results that have been archived.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [StringIO]
            #
            # @see HubspotSDK::Models::Cms::Blogs::Tags::BatchUpdateBatchParams
            def update_batch(params)
              query_params = [:archived]
              parsed, options = HubspotSDK::Cms::Blogs::Tags::BatchUpdateBatchParams.dump_request(params)
              query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
              @client.request(
                method: :post,
                path: "cms/blogs/2026-03/tags/batch/update",
                query: query,
                headers: {"content-type" => "*/*", "accept" => "*/*"},
                body: parsed.except(*query_params),
                model: StringIO,
                options: options
              )
            end

            # @api private
            #
            # @param client [HubspotSDK::Client]
            def initialize(client:)
              @client = client
            end
          end
        end
      end
    end
  end
end
