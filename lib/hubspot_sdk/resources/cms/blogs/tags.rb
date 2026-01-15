# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Tags
          # Create a new Blog Tag.
          #
          # @overload create(id:, created:, deleted_at:, language:, name:, translated_from_id:, updated:, request_options: {})
          #
          # @param id [String] The unique ID of the Blog Tag.
          #
          # @param created [Time]
          #
          # @param deleted_at [Time] The timestamp (ISO8601 format) when this Blog Tag was deleted.
          #
          # @param language [Symbol, HubspotSDK::Models::Cms::Blogs::Tag::Language] The explicitly defined ISO 639 language code of the tag.
          #
          # @param name [String] The name of the tag.
          #
          # @param translated_from_id [Integer] ID of the primary tag this object was translated from.
          #
          # @param updated [Time]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::Tag]
          #
          # @see HubspotSDK::Models::Cms::Blogs::TagCreateParams
          def create(params)
            parsed, options = HubspotSDK::Cms::Blogs::TagCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blogs/tags",
              body: parsed,
              model: HubspotSDK::Cms::Blogs::Tag,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::TagUpdateParams} for more details.
          #
          # Sparse updates a single Blog Tag object identified by the id in the path. All
          # the column values need not be specified. Only the that need to be modified can
          # be specified.
          #
          # @overload update(object_id_, id:, created:, deleted_at:, language:, name:, translated_from_id:, updated:, archived: nil, request_options: {})
          #
          # @param object_id_ [String] Path param: The Blog Tag id.
          #
          # @param id [String] Body param: The unique ID of the Blog Tag.
          #
          # @param created [Time] Body param
          #
          # @param deleted_at [Time] Body param: The timestamp (ISO8601 format) when this Blog Tag was deleted.
          #
          # @param language [Symbol, HubspotSDK::Models::Cms::Blogs::Tag::Language] Body param: The explicitly defined ISO 639 language code of the tag.
          #
          # @param name [String] Body param: The name of the tag.
          #
          # @param translated_from_id [Integer] Body param: ID of the primary tag this object was translated from.
          #
          # @param updated [Time] Body param
          #
          # @param archived [Boolean] Query param: Specifies whether to update deleted Blog Tags. Defaults to `false`.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::Tag]
          #
          # @see HubspotSDK::Models::Cms::Blogs::TagUpdateParams
          def update(object_id_, params)
            parsed, options = HubspotSDK::Cms::Blogs::TagUpdateParams.dump_request(params)
            query_params = [:archived]
            @client.request(
              method: :patch,
              path: ["cms/v3/blogs/tags/%1$s", object_id_],
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              model: HubspotSDK::Cms::Blogs::Tag,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::TagListParams} for more details.
          #
          # Get the list of blog tags. Supports paging and filtering. This method would be
          # useful for an integration that examined these models and used an external
          # service to suggest edits.
          #
          # @overload list(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
          #
          # @param after [String] The cursor token value to get the next set of results. You can get this from the
          #
          # @param archived [Boolean] Specifies whether to return deleted Blog Tags. Defaults to `false`.
          #
          # @param created_after [Time] Only return Blog Tags created after the specified time.
          #
          # @param created_at [Time] Only return Blog Tags created at exactly the specified time.
          #
          # @param created_before [Time] Only return Blog Tags created before the specified time.
          #
          # @param limit [Integer] The maximum number of results to return. Default is 100.
          #
          # @param property [String]
          #
          # @param sort [Array<String>] Specifies which fields to use for sorting results. Valid fields are `name`, `cre
          #
          # @param updated_after [Time] Only return Blog Tags last updated after the specified time.
          #
          # @param updated_at [Time] Only return Blog Tags last updated at exactly the specified time.
          #
          # @param updated_before [Time] Only return Blog Tags last updated before the specified time.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Cms::Blogs::Tag>]
          #
          # @see HubspotSDK::Models::Cms::Blogs::TagListParams
          def list(params = {})
            parsed, options = HubspotSDK::Cms::Blogs::TagListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "cms/v3/blogs/tags",
              query: parsed.transform_keys(
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Cms::Blogs::Tag,
              options: options
            )
          end

          # Delete the Blog Tag object identified by the id in the path.
          #
          # @overload delete(object_id_, archived: nil, request_options: {})
          #
          # @param object_id_ [String] The Blog Tag id.
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::TagDeleteParams
          def delete(object_id_, params = {})
            parsed, options = HubspotSDK::Cms::Blogs::TagDeleteParams.dump_request(params)
            @client.request(
              method: :delete,
              path: ["cms/v3/blogs/tags/%1$s", object_id_],
              query: parsed,
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
          # @see HubspotSDK::Models::Cms::Blogs::TagAttachToLangGroupParams
          def attach_to_lang_group(params)
            parsed, options = HubspotSDK::Cms::Blogs::TagAttachToLangGroupParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blogs/tags/multi-language/attach-to-lang-group",
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
          # @return [HubspotSDK::Models::Cms::Blogs::BatchResponseTag]
          #
          # @see HubspotSDK::Models::Cms::Blogs::TagCreateBatchParams
          def create_batch(params)
            parsed, options = HubspotSDK::Cms::Blogs::TagCreateBatchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blogs/tags/batch/create",
              body: parsed,
              model: HubspotSDK::Cms::Blogs::BatchResponseTag,
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::Tag]
          #
          # @see HubspotSDK::Models::Cms::Blogs::TagCreateLangVariationParams
          def create_lang_variation(params)
            parsed, options = HubspotSDK::Cms::Blogs::TagCreateLangVariationParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blogs/tags/multi-language/create-language-variation",
              body: parsed,
              model: HubspotSDK::Cms::Blogs::Tag,
              options: options
            )
          end

          # Delete the Blog Tag objects identified in the request body.
          #
          # @overload delete_batch(inputs:, request_options: {})
          #
          # @param inputs [Array<String>] Strings to input.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::TagDeleteBatchParams
          def delete_batch(params)
            parsed, options = HubspotSDK::Cms::Blogs::TagDeleteBatchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blogs/tags/batch/archive",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Detach a Blog Tag from a multi-language group.
          #
          # @overload detach_from_lang_group(id:, request_options: {})
          #
          # @param id [String] ID of the object to remove from a multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::TagDetachFromLangGroupParams
          def detach_from_lang_group(params)
            parsed, options = HubspotSDK::Cms::Blogs::TagDetachFromLangGroupParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blogs/tags/multi-language/detach-from-lang-group",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Retrieve the Blog Tag object identified by the id in the path.
          #
          # @overload get(object_id_, archived: nil, property: nil, request_options: {})
          #
          # @param object_id_ [String] The Blog Tag id.
          #
          # @param archived [Boolean] Specifies whether to return deleted Blog Tags. Defaults to `false`.
          #
          # @param property [String]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::Tag]
          #
          # @see HubspotSDK::Models::Cms::Blogs::TagGetParams
          def get(object_id_, params = {})
            parsed, options = HubspotSDK::Cms::Blogs::TagGetParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["cms/v3/blogs/tags/%1$s", object_id_],
              query: parsed,
              model: HubspotSDK::Cms::Blogs::Tag,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::TagGetBatchParams} for more details.
          #
          # Retrieve the Blog Tag objects identified in the request body.
          #
          # @overload get_batch(inputs:, archived: nil, request_options: {})
          #
          # @param inputs [Array<String>] Body param: Strings to input.
          #
          # @param archived [Boolean] Query param: Specifies whether to return deleted Blog Tags. Defaults to `false`.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::BatchResponseTag]
          #
          # @see HubspotSDK::Models::Cms::Blogs::TagGetBatchParams
          def get_batch(params)
            parsed, options = HubspotSDK::Cms::Blogs::TagGetBatchParams.dump_request(params)
            query_params = [:archived]
            @client.request(
              method: :post,
              path: "cms/v3/blogs/tags/batch/read",
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              model: HubspotSDK::Cms::Blogs::BatchResponseTag,
              options: options
            )
          end

          # Set a Blog Tag as the primary language of a multi-language group.
          #
          # @overload set_lang_primary(id:, request_options: {})
          #
          # @param id [String] ID of object to set as primary in multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::TagSetLangPrimaryParams
          def set_lang_primary(params)
            parsed, options = HubspotSDK::Cms::Blogs::TagSetLangPrimaryParams.dump_request(params)
            @client.request(
              method: :put,
              path: "cms/v3/blogs/tags/multi-language/set-new-lang-primary",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::TagUpdateBatchParams} for more details.
          #
          # Update the Blog Tag objects identified in the request body.
          #
          # @overload update_batch(inputs:, archived: nil, request_options: {})
          #
          # @param inputs [Array<Object>] Body param: JSON nodes to input.
          #
          # @param archived [Boolean] Query param: Specifies whether to update deleted Blog Tags. Defaults to `false`.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::Blogs::BatchResponseTag]
          #
          # @see HubspotSDK::Models::Cms::Blogs::TagUpdateBatchParams
          def update_batch(params)
            parsed, options = HubspotSDK::Cms::Blogs::TagUpdateBatchParams.dump_request(params)
            query_params = [:archived]
            @client.request(
              method: :post,
              path: "cms/v3/blogs/tags/batch/update",
              query: parsed.slice(*query_params),
              body: parsed.except(*query_params),
              model: HubspotSDK::Cms::Blogs::BatchResponseTag,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::TagUpdateLangsParams} for more details.
          #
          # Explicitly set new languages for each Blog Tag in a multi-language group.
          #
          # @overload update_langs(languages:, primary_id:, request_options: {})
          #
          # @param languages [Hash{Symbol=>String}] Map of object IDs to associated languages of object in the multi-language group.
          #
          # @param primary_id [String] ID of the primary object in the multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Blogs::TagUpdateLangsParams
          def update_langs(params)
            parsed, options = HubspotSDK::Cms::Blogs::TagUpdateLangsParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/blogs/tags/multi-language/update-languages",
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
