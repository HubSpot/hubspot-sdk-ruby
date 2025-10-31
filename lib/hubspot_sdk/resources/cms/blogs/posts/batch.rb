# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Posts
          class Batch
            # Create a batch of blog posts, specifying their content in the request body.
            #
            # @overload create(inputs:, request_options: {})
            #
            # @param inputs [Array<HubspotSDK::Models::Cms::Blogs::BlogPost>] Blog posts to input.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Cms::Blogs::BatchResponseBlogPost]
            #
            # @see HubspotSDK::Models::Cms::Blogs::Posts::BatchCreateParams
            def create(params)
              parsed, options = HubspotSDK::Cms::Blogs::Posts::BatchCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/v3/blogs/posts/batch/create",
                body: parsed,
                model: HubspotSDK::Cms::Blogs::BatchResponseBlogPost,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::Cms::Blogs::Posts::BatchUpdateParams} for more details.
            #
            # Update a batch of blog posts.
            #
            # @overload update(inputs:, archived: nil, request_options: {})
            #
            # @param inputs [Array<Object>] Body param: JSON nodes to input.
            #
            # @param archived [Boolean] Query param: Specifies whether to update deleted Blog Posts. Defaults to `false`
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Cms::Blogs::BatchResponseBlogPost]
            #
            # @see HubspotSDK::Models::Cms::Blogs::Posts::BatchUpdateParams
            def update(params)
              parsed, options = HubspotSDK::Cms::Blogs::Posts::BatchUpdateParams.dump_request(params)
              query_params = [:archived]
              @client.request(
                method: :post,
                path: "cms/v3/blogs/posts/batch/update",
                query: parsed.slice(*query_params),
                body: parsed.except(*query_params),
                model: HubspotSDK::Cms::Blogs::BatchResponseBlogPost,
                options: options
              )
            end

            # Delete a blog post by ID. Note: This is not the same as the in-app `archive`
            # function. To perform a dashboard `archive` send an normal update with the
            # `archivedInDashboard` field set to `true`.
            #
            # @overload delete(inputs:, request_options: {})
            #
            # @param inputs [Array<String>] Strings to input.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubspotSDK::Models::Cms::Blogs::Posts::BatchDeleteParams
            def delete(params)
              parsed, options = HubspotSDK::Cms::Blogs::Posts::BatchDeleteParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/v3/blogs/posts/batch/archive",
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::Cms::Blogs::Posts::BatchGetParams} for more details.
            #
            # Retrieve a batch of blog posts by ID. identified in the request body.
            #
            # @overload get(inputs:, archived: nil, request_options: {})
            #
            # @param inputs [Array<String>] Body param: Strings to input.
            #
            # @param archived [Boolean] Query param: Specifies whether to return deleted blog posts Defaults to `false`.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Cms::Blogs::BatchResponseBlogPost]
            #
            # @see HubspotSDK::Models::Cms::Blogs::Posts::BatchGetParams
            def get(params)
              parsed, options = HubspotSDK::Cms::Blogs::Posts::BatchGetParams.dump_request(params)
              query_params = [:archived]
              @client.request(
                method: :post,
                path: "cms/v3/blogs/posts/batch/read",
                query: parsed.slice(*query_params),
                body: parsed.except(*query_params),
                model: HubspotSDK::Cms::Blogs::BatchResponseBlogPost,
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
