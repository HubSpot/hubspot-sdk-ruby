# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Authors
          class Batch
            # Create the Blog Author objects detailed in the request body.
            #
            # @overload create(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::Cms::Blogs::BlogAuthor>] Blog authors to input.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [StringIO]
            #
            # @see HubspotSDK::Models::Cms::Blogs::Authors::BatchCreateParams
            def create(params)
              parsed, options = HubspotSDK::Cms::Blogs::Authors::BatchCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/blogs/2026-03/authors/batch/create",
                headers: {"content-type" => "*/*", "accept" => "*/*"},
                body: parsed,
                model: StringIO,
                options: options
              )
            end

            # Update the Blog Author objects identified in the request body.
            #
            # @overload update(inputs:, archived: nil, request_options: {})
            #
            # @param inputs [Array<Object>] Body param: JSON nodes to input.
            #
            # @param archived [Boolean] Query param: Whether to return only results that have been archived.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [StringIO]
            #
            # @see HubspotSDK::Models::Cms::Blogs::Authors::BatchUpdateParams
            def update(params)
              query_params = [:archived]
              parsed, options = HubspotSDK::Cms::Blogs::Authors::BatchUpdateParams.dump_request(params)
              query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
              @client.request(
                method: :post,
                path: "cms/blogs/2026-03/authors/batch/update",
                query: query,
                headers: {"content-type" => "*/*", "accept" => "*/*"},
                body: parsed.except(*query_params),
                model: StringIO,
                options: options
              )
            end

            # Delete the Blog Author objects identified in the request body.
            #
            # @overload delete(inputs:, request_options: {})
            #
            # @param inputs [Array<String>] Strings to input.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubspotSDK::Models::Cms::Blogs::Authors::BatchDeleteParams
            def delete(params)
              parsed, options = HubspotSDK::Cms::Blogs::Authors::BatchDeleteParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/blogs/2026-03/authors/batch/archive",
                headers: {"content-type" => "*/*"},
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # Retrieve the Blog Author objects identified in the request body.
            #
            # @overload get(inputs:, archived: nil, request_options: {})
            #
            # @param inputs [Array<String>] Body param: Strings to input.
            #
            # @param archived [Boolean] Query param: Whether to return only results that have been archived.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [StringIO]
            #
            # @see HubspotSDK::Models::Cms::Blogs::Authors::BatchGetParams
            def get(params)
              query_params = [:archived]
              parsed, options = HubspotSDK::Cms::Blogs::Authors::BatchGetParams.dump_request(params)
              query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
              @client.request(
                method: :post,
                path: "cms/blogs/2026-03/authors/batch/read",
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
