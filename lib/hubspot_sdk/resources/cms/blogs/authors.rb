# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Authors
          # @return [HubspotSDK::Resources::Cms::Blogs::Authors::Batch]
          attr_reader :batch

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::AuthorCreateParams} for more details.
          #
          # Create a new Blog Author.
          #
          # @overload create(id:, avatar:, bio:, created:, deleted_at:, display_name:, email:, facebook:, full_name:, language:, linkedin:, name:, slug:, translated_from_id:, twitter:, updated:, website:, request_options: {})
          #
          # @param id [String] The unique ID of the Blog Author.
          #
          # @param avatar [String] URL to the blog author's avatar, if supplying a custom one.
          #
          # @param bio [String] A short biography of the blog author.
          #
          # @param created [Time] The timestamp (ISO8601 format) when this Blog Author was created.
          #
          # @param deleted_at [Time] The timestamp (ISO8601 format) when this Blog Author was deleted.
          #
          # @param display_name [String] The full name of the Blog Author to be displayed.
          #
          # @param email [String] Email address of the Blog Author.
          #
          # @param facebook [String] URL to the Blog Author's Facebook page.
          #
          # @param full_name [String] The full, unabbreviated name of the blog author, typically their first and last
          #
          # @param language [Symbol, HubspotSDK::Models::Cms::Blogs::BlogAuthor::Language] The explicitly defined ISO 639 language code of the blog author.
          #
          # @param linkedin [String] URL to the blog author's LinkedIn page.
          #
          # @param name [String] The name field for the blog author. (This appears to be a shorter or alternative
          #
          # @param slug [String] A URL-friendly identifier for the blog author that can be used to reference the
          #
          # @param translated_from_id [Integer] ID of the primary blog author this object was translated from.
          #
          # @param twitter [String] URL or username of the Twitter account associated with the Blog Author. This wil
          #
          # @param updated [Time] The timestamp (ISO8601 format) when this Blog Author was updated.
          #
          # @param website [String] URL to the website of the Blog Author.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorCreateParams
          def create(params)
            parsed, options = HubspotSDK::Cms::Blogs::AuthorCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/blogs/2026-03/authors",
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed,
              model: StringIO,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::AuthorUpdateParams} for more details.
          #
          # Sparse updates a single Blog Author object identified by the id in the path. All
          # the column values need not be specified. Only the that need to be modified can
          # be specified.
          #
          # @overload update(object_id_, id:, avatar:, bio:, created:, deleted_at:, display_name:, email:, facebook:, full_name:, language:, linkedin:, name:, slug:, translated_from_id:, twitter:, updated:, website:, archived: nil, request_options: {})
          #
          # @param object_id_ [String] Path param
          #
          # @param id [String] Body param: The unique ID of the Blog Author.
          #
          # @param avatar [String] Body param: URL to the blog author's avatar, if supplying a custom one.
          #
          # @param bio [String] Body param: A short biography of the blog author.
          #
          # @param created [Time] Body param: The timestamp (ISO8601 format) when this Blog Author was created.
          #
          # @param deleted_at [Time] Body param: The timestamp (ISO8601 format) when this Blog Author was deleted.
          #
          # @param display_name [String] Body param: The full name of the Blog Author to be displayed.
          #
          # @param email [String] Body param: Email address of the Blog Author.
          #
          # @param facebook [String] Body param: URL to the Blog Author's Facebook page.
          #
          # @param full_name [String] Body param: The full, unabbreviated name of the blog author, typically their fir
          #
          # @param language [Symbol, HubspotSDK::Models::Cms::Blogs::BlogAuthor::Language] Body param: The explicitly defined ISO 639 language code of the blog author.
          #
          # @param linkedin [String] Body param: URL to the blog author's LinkedIn page.
          #
          # @param name [String] Body param: The name field for the blog author. (This appears to be a shorter or
          #
          # @param slug [String] Body param: A URL-friendly identifier for the blog author that can be used to re
          #
          # @param translated_from_id [Integer] Body param: ID of the primary blog author this object was translated from.
          #
          # @param twitter [String] Body param: URL or username of the Twitter account associated with the Blog Auth
          #
          # @param updated [Time] Body param: The timestamp (ISO8601 format) when this Blog Author was updated.
          #
          # @param website [String] Body param: URL to the website of the Blog Author.
          #
          # @param archived [Boolean] Query param: Whether to return only results that have been archived.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorUpdateParams
          def update(object_id_, params)
            query_params = [:archived]
            parsed, options = HubspotSDK::Cms::Blogs::AuthorUpdateParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
            @client.request(
              method: :patch,
              path: ["cms/blogs/2026-03/authors/%1$s", object_id_],
              query: query,
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed.except(*query_params),
              model: StringIO,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::AuthorListParams} for more details.
          #
          # Get the list of blog authors. Supports paging and filtering. This method would
          # be useful for an integration that examined these models and used an external
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorListParams
          def list(params = {})
            parsed, options = HubspotSDK::Cms::Blogs::AuthorListParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: "cms/blogs/2026-03/authors",
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

          # Delete the Blog Author object identified by the id in the path.
          #
          # @overload delete(object_id_, archived: nil, request_options: {})
          #
          # @param object_id_ [String]
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorDeleteParams
          def delete(object_id_, params = {})
            parsed, options = HubspotSDK::Cms::Blogs::AuthorDeleteParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :delete,
              path: ["cms/blogs/2026-03/authors/%1$s", object_id_],
              query: query,
              model: NilClass,
              options: options
            )
          end

          # Attach a Blog Author to a multi-language group.
          #
          # @overload attach_to_lang_group(id:, language:, primary_id:, primary_language: nil, request_options: {})
          #
          # @param id [String] ID of the object to add to a multi-language group.
          #
          # @param language [Symbol, HubspotSDK::Models::Cms::AttachToLangPrimaryRequestVNext::Language] Designated language of the object to add to a multi-language group.
          #
          # @param primary_id [String] ID of primary language object in multi-language group.
          #
          # @param primary_language [Symbol, HubspotSDK::Models::Cms::AttachToLangPrimaryRequestVNext::PrimaryLanguage] Primary language of the multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorAttachToLangGroupParams
          def attach_to_lang_group(params)
            parsed, options = HubspotSDK::Cms::Blogs::AuthorAttachToLangGroupParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/blogs/2026-03/authors/multi-language/attach-to-lang-group",
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed,
              model: StringIO,
              options: options
            )
          end

          # Create a new language variation from an existing Blog Author.
          #
          # @overload create_language_variation(id:, blog_author:, language: nil, primary_language: nil, request_options: {})
          #
          # @param id [String] ID of the object to be cloned.
          #
          # @param blog_author [HubspotSDK::Models::Cms::Blogs::BlogAuthor]
          #
          # @param language [String] Language of newly cloned object.
          #
          # @param primary_language [String] Primary language in multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorCreateLanguageVariationParams
          def create_language_variation(params)
            parsed, options = HubspotSDK::Cms::Blogs::AuthorCreateLanguageVariationParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/blogs/2026-03/authors/multi-language/create-language-variation",
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed,
              model: StringIO,
              options: options
            )
          end

          # Detach a Blog Author from a multi-language group.
          #
          # @overload detach_from_lang_group(id:, request_options: {})
          #
          # @param id [String] ID of the object to remove from a multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorDetachFromLangGroupParams
          def detach_from_lang_group(params)
            parsed, options = HubspotSDK::Cms::Blogs::AuthorDetachFromLangGroupParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/blogs/2026-03/authors/multi-language/detach-from-lang-group",
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed,
              model: StringIO,
              options: options
            )
          end

          # Retrieve the Blog Author object identified by the id in the path.
          #
          # @overload get(object_id_, archived: nil, property: nil, request_options: {})
          #
          # @param object_id_ [String]
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param property [String]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorGetParams
          def get(object_id_, params = {})
            parsed, options = HubspotSDK::Cms::Blogs::AuthorGetParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["cms/blogs/2026-03/authors/%1$s", object_id_],
              query: query,
              headers: {"accept" => "*/*"},
              model: StringIO,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::AuthorGetCursorParams} for more details.
          #
          # @overload get_cursor(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorGetCursorParams
          def get_cursor(params = {})
            parsed, options = HubspotSDK::Cms::Blogs::AuthorGetCursorParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
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
          # {HubspotSDK::Models::Cms::Blogs::AuthorGetCursorByQueryParams} for more details.
          #
          # @overload get_cursor_by_query(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorGetCursorByQueryParams
          def get_cursor_by_query(params = {})
            parsed, options = HubspotSDK::Cms::Blogs::AuthorGetCursorByQueryParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
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
          # {HubspotSDK::Models::Cms::Blogs::AuthorGetPostsCursorParams} for more details.
          #
          # @overload get_posts_cursor(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorGetPostsCursorParams
          def get_posts_cursor(params = {})
            parsed, options = HubspotSDK::Cms::Blogs::AuthorGetPostsCursorParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
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
          # {HubspotSDK::Models::Cms::Blogs::AuthorGetPostsCursorByQueryParams} for more
          # details.
          #
          # @overload get_posts_cursor_by_query(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorGetPostsCursorByQueryParams
          def get_posts_cursor_by_query(params = {})
            parsed, options = HubspotSDK::Cms::Blogs::AuthorGetPostsCursorByQueryParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
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

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::AuthorGetTagsCursorParams} for more details.
          #
          # @overload get_tags_cursor(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorGetTagsCursorParams
          def get_tags_cursor(params = {})
            parsed, options = HubspotSDK::Cms::Blogs::AuthorGetTagsCursorParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
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
          # {HubspotSDK::Models::Cms::Blogs::AuthorGetTagsCursorByQueryParams} for more
          # details.
          #
          # @overload get_tags_cursor_by_query(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorGetTagsCursorByQueryParams
          def get_tags_cursor_by_query(params = {})
            parsed, options = HubspotSDK::Cms::Blogs::AuthorGetTagsCursorByQueryParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
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

          # Set a Blog Author as the primary language of a multi-language group.
          #
          # @overload set_new_lang_primary(id:, request_options: {})
          #
          # @param id [String] ID of object to set as primary in multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorSetNewLangPrimaryParams
          def set_new_lang_primary(params)
            parsed, options = HubspotSDK::Cms::Blogs::AuthorSetNewLangPrimaryParams.dump_request(params)
            @client.request(
              method: :put,
              path: "cms/blogs/2026-03/authors/multi-language/set-new-lang-primary",
              headers: {"content-type" => "*/*"},
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::AuthorUpdateLanguagesParams} for more details.
          #
          # Explicitly set new languages for each Blog Author in a multi-language group.
          #
          # @overload update_languages(languages:, primary_id:, request_options: {})
          #
          # @param languages [Hash{Symbol=>Symbol, HubspotSDK::Models::Cms::UpdateLanguagesRequestVNext::Language}] Map of object IDs to associated languages of object in the multi-language group.
          #
          # @param primary_id [String] ID of the primary object in the multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorUpdateLanguagesParams
          def update_languages(params)
            parsed, options = HubspotSDK::Cms::Blogs::AuthorUpdateLanguagesParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/blogs/2026-03/authors/multi-language/update-languages",
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed,
              model: StringIO,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
            @batch = HubspotSDK::Resources::Cms::Blogs::Authors::Batch.new(client: client)
          end
        end
      end
    end
  end
end
