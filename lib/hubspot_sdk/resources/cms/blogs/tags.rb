# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class Blogs
        class Tags
          # @return [HubSpotSDK::Resources::Cms::Blogs::Tags::Batch]
          attr_reader :batch

          # Create a new Blog Tag.
          #
          # @overload create(id:, created:, deleted_at:, language:, name:, slug:, translated_from_id:, updated:, request_options: {})
          #
          # @param id [String] The unique ID of the Blog Tag.
          #
          # @param created [Time] The timestamp (ISO8601 format) when this Blog Tag was created.
          #
          # @param deleted_at [Time] The timestamp (ISO8601 format) when this Blog Tag was deleted.
          #
          # @param language [Symbol, HubSpotSDK::Models::Cms::Blogs::Tag::Language] The explicitly defined ISO 639 language code of the tag.
          #
          # @param name [String] The name of the tag.
          #
          # @param slug [String]
          #
          # @param translated_from_id [Integer] ID of the primary tag this object was translated from.
          #
          # @param updated [Time] The timestamp (ISO8601 format) when this Blog Tag was updated.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::TagCreateParams
          def create(params)
            parsed, options = HubSpotSDK::Cms::Blogs::TagCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/blogs/2026-03/tags",
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed,
              model: StringIO,
              options: options
            )
          end

          # Sparse updates a single Blog Tag object identified by the id in the path. All
          # the column values need not be specified. Only the that need to be modified can
          # be specified.
          #
          # @overload update(object_id_, id:, created:, deleted_at:, language:, name:, slug:, translated_from_id:, updated:, archived: nil, request_options: {})
          #
          # @param object_id_ [String] Path param
          #
          # @param id [String] Body param: The unique ID of the Blog Tag.
          #
          # @param created [Time] Body param: The timestamp (ISO8601 format) when this Blog Tag was created.
          #
          # @param deleted_at [Time] Body param: The timestamp (ISO8601 format) when this Blog Tag was deleted.
          #
          # @param language [Symbol, HubSpotSDK::Models::Cms::Blogs::Tag::Language] Body param: The explicitly defined ISO 639 language code of the tag.
          #
          # @param name [String] Body param: The name of the tag.
          #
          # @param slug [String] Body param
          #
          # @param translated_from_id [Integer] Body param: ID of the primary tag this object was translated from.
          #
          # @param updated [Time] Body param: The timestamp (ISO8601 format) when this Blog Tag was updated.
          #
          # @param archived [Boolean] Query param: Whether to return only results that have been archived.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::TagUpdateParams
          def update(object_id_, params)
            query_params = [:archived]
            parsed, options = HubSpotSDK::Cms::Blogs::TagUpdateParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :patch,
              path: ["cms/blogs/2026-03/tags/%1$s", object_id_],
              query: query,
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed.except(*query_params),
              model: StringIO,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Blogs::TagListParams} for more details.
          #
          # Get the list of blog tags. Supports paging and filtering. This method would be
          # useful for an integration that examined these models and used an external
          # service to suggest edits.
          #
          # @overload list(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
          # @param property [String]
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
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::TagListParams
          def list(params = {})
            parsed, options = HubSpotSDK::Cms::Blogs::TagListParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "cms/blogs/2026-03/tags",
              query: query.transform_keys(
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              headers: {"accept" => "*/*"},
              model: StringIO,
              options: options
            )
          end

          # Delete the Blog Tag object identified by the id in the path.
          #
          # @overload delete(object_id_, archived: nil, request_options: {})
          #
          # @param object_id_ [String]
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::TagDeleteParams
          def delete(object_id_, params = {})
            parsed, options = HubSpotSDK::Cms::Blogs::TagDeleteParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :delete,
              path: ["cms/blogs/2026-03/tags/%1$s", object_id_],
              query: query,
              model: NilClass,
              options: options
            )
          end

          # Attach a Blog Tag to a multi-language group.
          #
          # @overload attach_to_lang_group(id:, language:, primary_id:, primary_language: nil, request_options: {})
          #
          # @param id [String] ID of the object to add to a multi-language group.
          #
          # @param language [Symbol, HubSpotSDK::Models::Cms::AttachToLangPrimaryRequestVNext::Language] Designated language of the object to add to a multi-language group.
          #
          # @param primary_id [String] ID of primary language object in multi-language group.
          #
          # @param primary_language [Symbol, HubSpotSDK::Models::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage] Primary language of the multi-language group.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::TagAttachToLangGroupParams
          def attach_to_lang_group(params)
            parsed, options = HubSpotSDK::Cms::Blogs::TagAttachToLangGroupParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/blogs/2026-03/tags/multi-language/attach-to-lang-group",
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed,
              model: StringIO,
              options: options
            )
          end

          # Create a new language variation from an existing Blog Tag
          #
          # @overload create_lang_variation(id:, name:, language: nil, primary_language: nil, request_options: {})
          #
          # @param id [String] ID of the object to be cloned.
          #
          # @param name [String] Name of newly cloned blog tag.
          #
          # @param language [String] Target language of new variant.
          #
          # @param primary_language [String] Language of primary blog tag to clone.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::TagCreateLangVariationParams
          def create_lang_variation(params)
            parsed, options = HubSpotSDK::Cms::Blogs::TagCreateLangVariationParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/blogs/2026-03/tags/multi-language/create-language-variation",
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed,
              model: StringIO,
              options: options
            )
          end

          # Detach a Blog Tag from a multi-language group.
          #
          # @overload detach_from_lang_group(id:, request_options: {})
          #
          # @param id [String] ID of the object to remove from a multi-language group.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::TagDetachFromLangGroupParams
          def detach_from_lang_group(params)
            parsed, options = HubSpotSDK::Cms::Blogs::TagDetachFromLangGroupParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/blogs/2026-03/tags/multi-language/detach-from-lang-group",
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed,
              model: StringIO,
              options: options
            )
          end

          # Retrieve the Blog Tag object identified by the id in the path.
          #
          # @overload get(object_id_, archived: nil, property: nil, request_options: {})
          #
          # @param object_id_ [String]
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param property [String]
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::TagGetParams
          def get(object_id_, params = {})
            parsed, options = HubSpotSDK::Cms::Blogs::TagGetParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["cms/blogs/2026-03/tags/%1$s", object_id_],
              query: query,
              headers: {"accept" => "*/*"},
              model: StringIO,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Blogs::TagListAuthorsCursorParams} for more details.
          #
          # @overload list_authors_cursor(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
          # @param property [String]
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
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::TagListAuthorsCursorParams
          def list_authors_cursor(params = {})
            parsed, options = HubSpotSDK::Cms::Blogs::TagListAuthorsCursorParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "cms/blogs/2026-03/authors/cursor",
              query: query.transform_keys(
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              headers: {"accept" => "*/*"},
              model: StringIO,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Blogs::TagListAuthorsCursorByQueryParams} for more
          # details.
          #
          # @overload list_authors_cursor_by_query(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
          # @param property [String]
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
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::TagListAuthorsCursorByQueryParams
          def list_authors_cursor_by_query(params = {})
            parsed, options = HubSpotSDK::Cms::Blogs::TagListAuthorsCursorByQueryParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "cms/blogs/2026-03/authors/cursor/query",
              query: query.transform_keys(
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              headers: {"accept" => "*/*"},
              model: StringIO,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Blogs::TagListCursorParams} for more details.
          #
          # @overload list_cursor(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
          # @param property [String]
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
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::TagListCursorParams
          def list_cursor(params = {})
            parsed, options = HubSpotSDK::Cms::Blogs::TagListCursorParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "cms/blogs/2026-03/tags/cursor",
              query: query.transform_keys(
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              headers: {"accept" => "*/*"},
              model: StringIO,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Blogs::TagListCursorByQueryParams} for more details.
          #
          # @overload list_cursor_by_query(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
          # @param property [String]
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
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::TagListCursorByQueryParams
          def list_cursor_by_query(params = {})
            parsed, options = HubSpotSDK::Cms::Blogs::TagListCursorByQueryParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "cms/blogs/2026-03/tags/cursor/query",
              query: query.transform_keys(
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              headers: {"accept" => "*/*"},
              model: StringIO,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Blogs::TagListPostsCursorParams} for more details.
          #
          # @overload list_posts_cursor(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
          # @param property [String]
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
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::TagListPostsCursorParams
          def list_posts_cursor(params = {})
            parsed, options = HubSpotSDK::Cms::Blogs::TagListPostsCursorParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "cms/blogs/2026-03/posts/cursor",
              query: query.transform_keys(
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              headers: {"accept" => "*/*"},
              model: StringIO,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Blogs::TagListPostsCursorByQueryParams} for more
          # details.
          #
          # @overload list_posts_cursor_by_query(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
          # @param property [String]
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
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::TagListPostsCursorByQueryParams
          def list_posts_cursor_by_query(params = {})
            parsed, options = HubSpotSDK::Cms::Blogs::TagListPostsCursorByQueryParams.dump_request(params)
            query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "cms/blogs/2026-03/posts/cursor/query",
              query: query.transform_keys(
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              headers: {"accept" => "*/*"},
              model: StringIO,
              options: options
            )
          end

          # Set a Blog Tag as the primary language of a multi-language group.
          #
          # @overload set_lang_primary(id:, request_options: {})
          #
          # @param id [String] ID of object to set as primary in multi-language group.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::TagSetLangPrimaryParams
          def set_lang_primary(params)
            parsed, options = HubSpotSDK::Cms::Blogs::TagSetLangPrimaryParams.dump_request(params)
            @client.request(
              method: :put,
              path: "cms/blogs/2026-03/tags/multi-language/set-new-lang-primary",
              headers: {"content-type" => "*/*"},
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Cms::Blogs::TagUpdateLangsParams} for more details.
          #
          # Explicitly set new languages for each Blog Tag in a multi-language group.
          #
          # @overload update_langs(languages:, primary_id:, request_options: {})
          #
          # @param languages [Hash{Symbol=>Symbol, HubSpotSDK::Models::Cms::UpdateLanguagesRequestVNext::Language}] Map of object IDs to associated languages of object in the multi-language group.
          #
          # @param primary_id [String] ID of the primary object in the multi-language group.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubSpotSDK::Models::Cms::Blogs::TagUpdateLangsParams
          def update_langs(params)
            parsed, options = HubSpotSDK::Cms::Blogs::TagUpdateLangsParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/blogs/2026-03/tags/multi-language/update-languages",
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed,
              model: StringIO,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubSpotSDK::Client]
          def initialize(client:)
            @client = client
            @batch = HubSpotSDK::Resources::Cms::Blogs::Tags::Batch.new(client: client)
          end
        end
      end
    end
  end
end
