# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Authors
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
          # @param created [Time]
          #
          # @param deleted_at [Time] The timestamp (ISO8601 format) when this Blog Author was deleted.
          #
          # @param display_name [String] The full name of the Blog Author to be displayed.
          #
          # @param email [String] Email address of the Blog Author.
          #
          # @param facebook [String] URL to the Blog Author's Facebook page.
          #
          # @param full_name [String]
          #
          # @param language [Symbol, HubspotSDK::Models::Cms::Blogs::BlogAuthor::Language] The explicitly defined ISO 639 language code of the blog author.
          #
          # @param linkedin [String] URL to the blog author's LinkedIn page.
          #
          # @param name [String]
          #
          # @param slug [String]
          #
          # @param translated_from_id [Integer] ID of the primary blog author this object was translated from.
          #
          # @param twitter [String] URL or username of the Twitter account associated with the Blog Author. This wil
          #
          # @param updated [Time]
          #
          # @param website [String] URL to the website of the Blog Author.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::BlogAuthor]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorCreateParams
          def create(params)
            parsed, options = HubspotSDK::Cms::Blogs::AuthorCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blogs/authors",
              body: parsed,
              model: HubspotSDK::Cms::Blogs::BlogAuthor,
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
          # @param object_id_ [String] Path param: The Blog Author id.
          #
          # @param id [String] Body param: The unique ID of the Blog Author.
          #
          # @param avatar [String] Body param: URL to the blog author's avatar, if supplying a custom one.
          #
          # @param bio [String] Body param: A short biography of the blog author.
          #
          # @param created [Time] Body param:
          #
          # @param deleted_at [Time] Body param: The timestamp (ISO8601 format) when this Blog Author was deleted.
          #
          # @param display_name [String] Body param: The full name of the Blog Author to be displayed.
          #
          # @param email [String] Body param: Email address of the Blog Author.
          #
          # @param facebook [String] Body param: URL to the Blog Author's Facebook page.
          #
          # @param full_name [String] Body param:
          #
          # @param language [Symbol, HubspotSDK::Models::Cms::Blogs::BlogAuthor::Language] Body param: The explicitly defined ISO 639 language code of the blog author.
          #
          # @param linkedin [String] Body param: URL to the blog author's LinkedIn page.
          #
          # @param name [String] Body param:
          #
          # @param slug [String] Body param:
          #
          # @param translated_from_id [Integer] Body param: ID of the primary blog author this object was translated from.
          #
          # @param twitter [String] Body param: URL or username of the Twitter account associated with the Blog Auth
          #
          # @param updated [Time] Body param:
          #
          # @param website [String] Body param: URL to the website of the Blog Author.
          #
          # @param archived [Boolean] Query param: Specifies whether to update deleted Blog Authors. Defaults to `fals
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::BlogAuthor]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorUpdateParams
          def update(object_id_, params)
            parsed, options = HubspotSDK::Cms::Blogs::AuthorUpdateParams.dump_request(params)
            query_params = [:archived]
            @client.request(
              method: :patch,
              path: ["cms/v3/blogs/authors/%1$s", object_id_],
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              model: HubspotSDK::Cms::Blogs::BlogAuthor,
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
          # @param after [String] The cursor token value to get the next set of results. You can get this from the
          #
          # @param archived [Boolean] Specifies whether to return deleted Blog Authors. Defaults to `false`.
          #
          # @param created_after [Time] Only return Blog Authors created after the specified time.
          #
          # @param created_at [Time] Only return Blog Authors created at exactly the specified time.
          #
          # @param created_before [Time] Only return Blog Authors created before the specified time.
          #
          # @param limit [Integer] The maximum number of results to return. Default is 100.
          #
          # @param property [String]
          #
          # @param sort [Array<String>] Specifies which fields to use for sorting results. Valid fields are `name`, `cre
          #
          # @param updated_after [Time] Only return Blog Authors last updated after the specified time.
          #
          # @param updated_at [Time] Only return Blog Authors last updated at exactly the specified time.
          #
          # @param updated_before [Time] Only return Blog Authors last updated before the specified time.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Cms::Blogs::BlogAuthor>]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorListParams
          def list(params = {})
            parsed, options = HubspotSDK::Cms::Blogs::AuthorListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "cms/v3/blogs/authors",
              query: parsed.transform_keys(
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Cms::Blogs::BlogAuthor,
              options: options
            )
          end

          # Delete the Blog Author object identified by the id in the path.
          #
          # @overload delete(object_id_, archived: nil, request_options: {})
          #
          # @param object_id_ [String] The Blog Author id.
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
            @client.request(
              method: :delete,
              path: ["cms/v3/blogs/authors/%1$s", object_id_],
              query: parsed,
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
          # @see HubspotSDK::Models::Cms::Blogs::AuthorAttachToLangGroupParams
          def attach_to_lang_group(params)
            parsed, options = HubspotSDK::Cms::Blogs::AuthorAttachToLangGroupParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blogs/authors/multi-language/attach-to-lang-group",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Create the Blog Author objects detailed in the request body.
          #
          # @overload create_batch(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Cms::Blogs::BlogAuthor>] Blog authors to input.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::BatchResponseBlogAuthor]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorCreateBatchParams
          def create_batch(params)
            parsed, options = HubspotSDK::Cms::Blogs::AuthorCreateBatchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blogs/authors/batch/create",
              body: parsed,
              model: HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor,
              options: options
            )
          end

          # Create a new language variation from an existing Blog Author.
          #
          # @overload create_language_variation(id:, blog_author:, language: nil, primary_language: nil, request_options: {})
          #
          # @param id [String] ID of the object to be cloned.
          #
          # @param blog_author [HubspotSDK::Models::Cms::Blogs::BlogAuthor] Model definition for a Blog Author.
          #
          # @param language [String] Language of newly cloned object.
          #
          # @param primary_language [String] Primary language in multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::BlogAuthor]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorCreateLanguageVariationParams
          def create_language_variation(params)
            parsed, options = HubspotSDK::Cms::Blogs::AuthorCreateLanguageVariationParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blogs/authors/multi-language/create-language-variation",
              body: parsed,
              model: HubspotSDK::Cms::Blogs::BlogAuthor,
              options: options
            )
          end

          # Delete the Blog Author objects identified in the request body.
          #
          # @overload delete_batch(inputs:, request_options: {})
          #
          # @param inputs [Array<String>] Strings to input.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorDeleteBatchParams
          def delete_batch(params)
            parsed, options = HubspotSDK::Cms::Blogs::AuthorDeleteBatchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blogs/authors/batch/archive",
              body: parsed,
              model: NilClass,
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
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorDetachFromLangGroupParams
          def detach_from_lang_group(params)
            parsed, options = HubspotSDK::Cms::Blogs::AuthorDetachFromLangGroupParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blogs/authors/multi-language/detach-from-lang-group",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Retrieve the Blog Author object identified by the id in the path.
          #
          # @overload get(object_id_, archived: nil, property: nil, request_options: {})
          #
          # @param object_id_ [String] The Blog Author id.
          #
          # @param archived [Boolean] Specifies whether to return deleted Blog Authors. Defaults to `false`.
          #
          # @param property [String]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::BlogAuthor]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorGetParams
          def get(object_id_, params = {})
            parsed, options = HubspotSDK::Cms::Blogs::AuthorGetParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["cms/v3/blogs/authors/%1$s", object_id_],
              query: parsed,
              model: HubspotSDK::Cms::Blogs::BlogAuthor,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::AuthorGetBatchParams} for more details.
          #
          # Retrieve the Blog Author objects identified in the request body.
          #
          # @overload get_batch(inputs:, archived: nil, request_options: {})
          #
          # @param inputs [Array<String>] Body param: Strings to input.
          #
          # @param archived [Boolean] Query param: Specifies whether to return deleted Blog Authors. Defaults to `fals
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::BatchResponseBlogAuthor]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorGetBatchParams
          def get_batch(params)
            parsed, options = HubspotSDK::Cms::Blogs::AuthorGetBatchParams.dump_request(params)
            query_params = [:archived]
            @client.request(
              method: :post,
              path: "cms/v3/blogs/authors/batch/read",
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              model: HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor,
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
              path: "cms/v3/blogs/authors/multi-language/set-new-lang-primary",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::AuthorUpdateBatchParams} for more details.
          #
          # Update the Blog Author objects identified in the request body.
          #
          # @overload update_batch(inputs:, archived: nil, request_options: {})
          #
          # @param inputs [Array<Object>] Body param: JSON nodes to input.
          #
          # @param archived [Boolean] Query param: Specifies whether to update deleted Blog Authors. Defaults to `fals
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::BatchResponseBlogAuthor]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorUpdateBatchParams
          def update_batch(params)
            parsed, options = HubspotSDK::Cms::Blogs::AuthorUpdateBatchParams.dump_request(params)
            query_params = [:archived]
            @client.request(
              method: :post,
              path: "cms/v3/blogs/authors/batch/update",
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              model: HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor,
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
          # @param languages [Hash{Symbol=>String}] Map of object IDs to associated languages of object in the multi-language group.
          #
          # @param primary_id [String] ID of the primary object in the multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::AuthorUpdateLanguagesParams
          def update_languages(params)
            parsed, options = HubspotSDK::Cms::Blogs::AuthorUpdateLanguagesParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blogs/authors/multi-language/update-languages",
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
