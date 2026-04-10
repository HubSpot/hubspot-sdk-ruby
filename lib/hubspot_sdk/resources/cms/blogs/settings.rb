# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class Blogs
        class Settings
          # @return [HubSpotSDK::Resources::Cms::Blogs::Settings::MultiLanguage]
          attr_reader :multi_language

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Blogs::SettingListParams} for more details.
          #
          # Get the list of blogs. Results can be limited and filtered by creation or
          # updated date.
          #
          # @overload list(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param created_after [Time]
          #
          # @param created_at [Time]
          #
          # @param created_before [Time]
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param sort [Array<String>]
          #
          # @param updated_after [Time]
          #
          # @param updated_at [Time]
          #
          # @param updated_before [Time]
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Cms::Blogs::Blog>]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::SettingListParams
          def list(params = {})
            parsed, options = HubSpotSDK::Cms::Blogs::SettingListParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "cms/blog-settings/2026-03/settings",
              query: query.transform_keys(
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              page: HubSpotSDK::Internal::Page,
              model: HubSpotSDK::Cms::Blogs::Blog,
              options: options
            )
          end

          # Retrieve a specific blog by its ID.
          #
          # @overload get(blog_id, request_options: {})
          #
          # @param blog_id [String]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Cms::Blogs::Blog]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::SettingGetParams
          def get(blog_id, params = {})
            @client.request(
              method: :get,
              path: ["cms/blog-settings/2026-03/settings/%1$s", blog_id],
              model: HubSpotSDK::Cms::Blogs::Blog,
              options: params[:request_options]
            )
          end

          # Get a specific blog revision.
          #
          # @overload get_revision(revision_id, blog_id:, request_options: {})
          #
          # @param revision_id [String]
          # @param blog_id [String]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Cms::Blogs::BlogVersion]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::SettingGetRevisionParams
          def get_revision(revision_id, params)
            parsed, options = HubSpotSDK::Cms::Blogs::SettingGetRevisionParams.dump_request(params)
            blog_id =
              parsed.delete(:blog_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["cms/blog-settings/2026-03/settings/%1$s/revisions/%2$s", blog_id, revision_id],
              model: HubSpotSDK::Cms::Blogs::BlogVersion,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Blogs::SettingListRevisionsParams} for more details.
          #
          # Get the list of blog revisions. Results can be limited and filtered by creation
          # or updated date.
          #
          # @overload list_revisions(blog_id, after: nil, before: nil, limit: nil, request_options: {})
          #
          # @param blog_id [String]
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param before [String]
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Cms::Blogs::VersionBlog>]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::SettingListRevisionsParams
          def list_revisions(blog_id, params = {})
            parsed, options = HubSpotSDK::Cms::Blogs::SettingListRevisionsParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["cms/blog-settings/2026-03/settings/%1$s/revisions", blog_id],
              query: query,
              page: HubSpotSDK::Internal::Page,
              model: HubSpotSDK::Cms::Blogs::VersionBlog,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubSpotSDK::Client]
          def initialize(client:)
            @client = client
            @multi_language = HubSpotSDK::Resources::Cms::Blogs::Settings::MultiLanguage.new(client: client)
          end
        end
      end
    end
  end
end
