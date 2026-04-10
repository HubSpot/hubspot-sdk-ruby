# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class Blogs
        class Posts
          class Revisions
            # Retrieve a previous version of a blog post.
            #
            # @overload get_previous_version(revision_id, object_id_:, request_options: {})
            #
            # @param revision_id [String]
            # @param object_id_ [String]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [StringIO]
            #
            # @see HubSpotSDK::Models::Cms::Blogs::Posts::RevisionGetPreviousVersionParams
            def get_previous_version(revision_id, params)
              parsed, options = HubSpotSDK::Cms::Blogs::Posts::RevisionGetPreviousVersionParams.dump_request(params)
              object_id_ =
                parsed.delete(:object_id_) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :get,
                path: ["cms/blogs/2026-03/posts/%1$s/revisions/%2$s", object_id_, revision_id],
                headers: {"accept" => "*/*"},
                model: StringIO,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubSpotSDK::Models::Cms::Blogs::Posts::RevisionGetPreviousVersionsParams} for
            # more details.
            #
            # Retrieve all the previous versions of a blog post.
            #
            # @overload get_previous_versions(object_id_, after: nil, before: nil, limit: nil, request_options: {})
            #
            # @param object_id_ [String]
            #
            # @param after [String] The paging cursor token of the last successfully read resource will be returned
            #
            # @param before [String]
            #
            # @param limit [Integer] The maximum number of results to display per page.
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [StringIO]
            #
            # @see HubSpotSDK::Models::Cms::Blogs::Posts::RevisionGetPreviousVersionsParams
            def get_previous_versions(object_id_, params = {})
              parsed, options = HubSpotSDK::Cms::Blogs::Posts::RevisionGetPreviousVersionsParams.dump_request(params)
              query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
              @client.request(
                method: :get,
                path: ["cms/blogs/2026-03/posts/%1$s/revisions", object_id_],
                query: query,
                headers: {"accept" => "*/*"},
                model: StringIO,
                options: options
              )
            end

            # Restores a blog post to one of its previous versions.
            #
            # @overload restore_previous_version(revision_id, object_id_:, request_options: {})
            #
            # @param revision_id [String]
            # @param object_id_ [String]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [StringIO]
            #
            # @see HubSpotSDK::Models::Cms::Blogs::Posts::RevisionRestorePreviousVersionParams
            def restore_previous_version(revision_id, params)
              parsed, options =
                HubSpotSDK::Cms::Blogs::Posts::RevisionRestorePreviousVersionParams.dump_request(params)
              object_id_ =
                parsed.delete(:object_id_) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: ["cms/blogs/2026-03/posts/%1$s/revisions/%2$s/restore", object_id_, revision_id],
                headers: {"accept" => "*/*"},
                model: StringIO,
                options: options
              )
            end

            # Takes a specified version of a blog post, sets it as the new draft version of
            # the blog post.
            #
            # @overload restore_previous_version_to_draft(revision_id, object_id_:, request_options: {})
            #
            # @param revision_id [Integer]
            # @param object_id_ [String]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [StringIO]
            #
            # @see HubSpotSDK::Models::Cms::Blogs::Posts::RevisionRestorePreviousVersionToDraftParams
            def restore_previous_version_to_draft(revision_id, params)
              parsed, options =
                HubSpotSDK::Cms::Blogs::Posts::RevisionRestorePreviousVersionToDraftParams.dump_request(params)
              object_id_ =
                parsed.delete(:object_id_) do
                  raise ArgumentError.new("missing required path argument #{_1}")
                end
              @client.request(
                method: :post,
                path: [
                  "cms/blogs/2026-03/posts/%1$s/revisions/%2$s/restore-to-draft",
                  object_id_,
                  revision_id
                ],
                headers: {"accept" => "*/*"},
                model: StringIO,
                options: options
              )
            end

            # @api private
            #
            # @param client [HubSpotSDK::Client]
            def initialize(client:)
              @client = client
            end
          end
        end
      end
    end
  end
end
