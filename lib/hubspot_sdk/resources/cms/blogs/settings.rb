# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Settings
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::SettingListParams} for more details.
          #
          # Get the list of Blogs. Supports paging and filtering. This method would be
          # useful for an integration that examined these models and used an external
          # service to suggest edits.
          #
          # @overload list(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
          #
          # @param after [String] The cursor token value to get the next set of results. You can get this from the
          #
          # @param archived [Boolean] Specifies whether to return archived Blogs. Defaults to `false`.
          #
          # @param created_after [Time] Only return Blogs created after the specified time.
          #
          # @param created_at [Time] Only return Blogs created at exactly the specified time.
          #
          # @param created_before [Time] Only return Blogs created before the specified time.
          #
          # @param limit [Integer] The maximum number of results to return. Default is 100.
          #
          # @param sort [Array<String>] Specifies which fields to use for sorting results. Valid fields are `name` and `
          #
          # @param updated_after [Time] Only return Blogs last updated after the specified time.
          #
          # @param updated_at [Time] Only return Blogs last updated at exactly the specified time.
          #
          # @param updated_before [Time] Only return Blogs last updated before the specified time.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Cms::Blogs::Blog>]
          #
          # @see HubspotSDK::Models::Cms::Blogs::SettingListParams
          def list(params = {})
            parsed, options = HubspotSDK::Cms::Blogs::SettingListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "cms/v3/blog-settings/settings",
              query: parsed.transform_keys(
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Cms::Blogs::Blog,
              options: options
            )
          end

          # Attach a blog to a multi-language group.
          #
          # @overload attach_to_lang_group(id:, language:, primary_id:, primary_language: nil, request_options: {})
          #
          # @param id [String] ID of the object to add to a multi-language group.
          #
          # @param language [String] Designated language of the object to add to a multi-language group.
          #
          # @param primary_id [String] ID of primary language object in multi-language group.
          #
          # @param primary_language [String] Primary language of the multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::SettingAttachToLangGroupParams
          def attach_to_lang_group(params)
            parsed, options = HubspotSDK::Cms::Blogs::SettingAttachToLangGroupParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blog-settings/settings/multi-language/attach-to-lang-group",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Create a new language variation from an existing blog
          #
          # @overload create_language_variation(id:, language: nil, primary_language: nil, slug: nil, request_options: {})
          #
          # @param id [String] ID of blog to clone.
          #
          # @param language [String] Target language of new variant.
          #
          # @param primary_language [String] Language of primary blog to clone.
          #
          # @param slug [String] Path to this blog.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::Blog]
          #
          # @see HubspotSDK::Models::Cms::Blogs::SettingCreateLanguageVariationParams
          def create_language_variation(params)
            parsed, options = HubspotSDK::Cms::Blogs::SettingCreateLanguageVariationParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blog-settings/settings/multi-language/create-language-variation",
              body: parsed,
              model: HubspotSDK::Cms::Blogs::Blog,
              options: options
            )
          end

          # Detach a blog from a multi-language group.
          #
          # @overload detach_from_lang_group(id:, request_options: {})
          #
          # @param id [String] ID of the object to remove from a multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::SettingDetachFromLangGroupParams
          def detach_from_lang_group(params)
            parsed, options = HubspotSDK::Cms::Blogs::SettingDetachFromLangGroupParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blog-settings/settings/multi-language/detach-from-lang-group",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Retrieve the Blog object identified by the id in the path.
          #
          # @overload get(blog_id, request_options: {})
          #
          # @param blog_id [String] The Blog id.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::Blog]
          #
          # @see HubspotSDK::Models::Cms::Blogs::SettingGetParams
          def get(blog_id, params = {})
            @client.request(
              method: :get,
              path: ["cms/v3/blog-settings/settings/%1$s", blog_id],
              model: HubspotSDK::Cms::Blogs::Blog,
              options: params[:request_options]
            )
          end

          # Retrieves a previous version of a Blog
          #
          # @overload get_revision(revision_id, blog_id:, request_options: {})
          #
          # @param revision_id [String] The Blog version id.
          #
          # @param blog_id [String] The Blog id.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::VersionBlog]
          #
          # @see HubspotSDK::Models::Cms::Blogs::SettingGetRevisionParams
          def get_revision(revision_id, params)
            parsed, options = HubspotSDK::Cms::Blogs::SettingGetRevisionParams.dump_request(params)
            blog_id =
              parsed.delete(:blog_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["cms/v3/blog-settings/settings/%1$s/revisions/%2$s", blog_id, revision_id],
              model: HubspotSDK::Cms::Blogs::VersionBlog,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::SettingListRevisionsParams} for more details.
          #
          # Retrieves all the previous versions of a Blog
          #
          # @overload list_revisions(blog_id, after: nil, before: nil, limit: nil, request_options: {})
          #
          # @param blog_id [String] The Blog id.
          #
          # @param after [String] The cursor token value to get the next set of results. You can get this from the
          #
          # @param before [String]
          #
          # @param limit [Integer] The maximum number of results to return. Default is 100.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::CollectionResponseWithTotalVersionBlog]
          #
          # @see HubspotSDK::Models::Cms::Blogs::SettingListRevisionsParams
          def list_revisions(blog_id, params = {})
            parsed, options = HubspotSDK::Cms::Blogs::SettingListRevisionsParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["cms/v3/blog-settings/settings/%1$s/revisions", blog_id],
              query: parsed,
              model: HubspotSDK::Cms::Blogs::CollectionResponseWithTotalVersionBlog,
              options: options
            )
          end

          # Set a blog as the primary language of a multi-language group.
          #
          # @overload set_new_lang_primary(id:, request_options: {})
          #
          # @param id [String] ID of object to set as primary in multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::SettingSetNewLangPrimaryParams
          def set_new_lang_primary(params)
            parsed, options = HubspotSDK::Cms::Blogs::SettingSetNewLangPrimaryParams.dump_request(params)
            @client.request(
              method: :put,
              path: "cms/v3/blog-settings/settings/multi-language/set-new-lang-primary",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::SettingUpdateLanguagesParams} for more details.
          #
          # Explicitly set new languages for each blog in a multi-language group.
          #
          # @overload update_languages(languages:, primary_id:, request_options: {})
          #
          # @param languages [Hash{Symbol=>String}] Map of object IDs to associated languages of object in the multi-language group.
          #
          # @param primary_id [String] ID of the primary object in the multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::SettingUpdateLanguagesParams
          def update_languages(params)
            parsed, options = HubspotSDK::Cms::Blogs::SettingUpdateLanguagesParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blog-settings/settings/multi-language/update-languages",
              body: parsed,
              model: NilClass,
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
