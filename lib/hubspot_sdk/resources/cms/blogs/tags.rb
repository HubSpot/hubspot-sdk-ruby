# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Tags
          # @overload create(id:, created:, deleted_at:, language:, name:, slug:, translated_from_id:, updated:, request_options: {})
          #
          # @param id [String] The unique ID of the Blog Tag.
          #
          # @param created [Time] The timestamp (ISO8601 format) when this Blog Tag was created.
          #
          # @param deleted_at [Time] The timestamp (ISO8601 format) when this Blog Tag was deleted.
          #
          # @param language [Symbol, HubspotSDK::Models::Cms::Blogs::Tag::Language] The explicitly defined ISO 639 language code of the tag.
          #
          # @param name [String] The name of the tag.
          #
          # @param slug [String]
          #
          # @param translated_from_id [Integer] ID of the primary tag this object was translated from.
          #
          # @param updated [Time] The timestamp (ISO8601 format) when this Blog Tag was updated.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Blogs::TagCreateParams
          def create(params)
            parsed, options = HubspotSDK::Cms::Blogs::TagCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/blogs/2026-03/tags",
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed,
              model: StringIO,
              options: options
            )
          end

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
          # @param language [Symbol, HubspotSDK::Models::Cms::Blogs::Tag::Language] Body param: The explicitly defined ISO 639 language code of the tag.
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
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Blogs::TagUpdateParams
          def update(object_id_, params)
            query_params = [:archived]
            parsed, options = HubspotSDK::Cms::Blogs::TagUpdateParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
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
          # {HubspotSDK::Models::Cms::Blogs::TagListParams} for more details.
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
          # @see HubspotSDK::Models::Cms::Blogs::TagListParams
          def list(params = {})
            parsed, options = HubspotSDK::Cms::Blogs::TagListParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
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
          # @see HubspotSDK::Models::Cms::Blogs::TagDeleteParams
          def delete(object_id_, params = {})
            parsed, options = HubspotSDK::Cms::Blogs::TagDeleteParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :delete,
              path: ["cms/blogs/2026-03/tags/%1$s", object_id_],
              query: query,
              model: NilClass,
              options: options
            )
          end

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
          # @see HubspotSDK::Models::Cms::Blogs::TagAttachToLangGroupParams
          def attach_to_lang_group(params)
            parsed, options = HubspotSDK::Cms::Blogs::TagAttachToLangGroupParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/blogs/2026-03/tags/multi-language/attach-to-lang-group",
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed,
              model: StringIO,
              options: options
            )
          end

          # @overload create_batch(inputs:, request_options: {})
          #
          # @param inputs [Array<HubspotSDK::Models::Cms::Blogs::Tag>] Blog tags to input.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Blogs::TagCreateBatchParams
          def create_batch(params)
            parsed, options = HubspotSDK::Cms::Blogs::TagCreateBatchParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/blogs/2026-03/tags/batch/create",
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed,
              model: StringIO,
              options: options
            )
          end

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
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Blogs::TagCreateLangVariationParams
          def create_lang_variation(params)
            parsed, options = HubspotSDK::Cms::Blogs::TagCreateLangVariationParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/blogs/2026-03/tags/multi-language/create-language-variation",
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed,
              model: StringIO,
              options: options
            )
          end

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
              path: "cms/blogs/2026-03/tags/batch/archive",
              headers: {"content-type" => "*/*"},
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # @overload detach_from_lang_group(id:, request_options: {})
          #
          # @param id [String] ID of the object to remove from a multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Blogs::TagDetachFromLangGroupParams
          def detach_from_lang_group(params)
            parsed, options = HubspotSDK::Cms::Blogs::TagDetachFromLangGroupParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/blogs/2026-03/tags/multi-language/detach-from-lang-group",
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed,
              model: StringIO,
              options: options
            )
          end

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
          # @see HubspotSDK::Models::Cms::Blogs::TagGetParams
          def get(object_id_, params = {})
            parsed, options = HubspotSDK::Cms::Blogs::TagGetParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["cms/blogs/2026-03/tags/%1$s", object_id_],
              query: query,
              headers: {"accept" => "*/*"},
              model: StringIO,
              options: options
            )
          end

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
          # @see HubspotSDK::Models::Cms::Blogs::TagGetBatchParams
          def get_batch(params)
            query_params = [:archived]
            parsed, options = HubspotSDK::Cms::Blogs::TagGetBatchParams.dump_request(params)
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
              path: "cms/blogs/2026-03/tags/multi-language/set-new-lang-primary",
              headers: {"content-type" => "*/*"},
              body: parsed,
              model: NilClass,
              options: options
            )
          end

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
          # @see HubspotSDK::Models::Cms::Blogs::TagUpdateBatchParams
          def update_batch(params)
            query_params = [:archived]
            parsed, options = HubspotSDK::Cms::Blogs::TagUpdateBatchParams.dump_request(params)
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

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Blogs::TagUpdateLangsParams} for more details.
          #
          # @overload update_langs(languages:, primary_id:, request_options: {})
          #
          # @param languages [Hash{Symbol=>Symbol, HubspotSDK::Models::Cms::UpdateLanguagesRequestVNext::Language}] Map of object IDs to associated languages of object in the multi-language group.
          #
          # @param primary_id [String] ID of the primary object in the multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Blogs::TagUpdateLangsParams
          def update_langs(params)
            parsed, options = HubspotSDK::Cms::Blogs::TagUpdateLangsParams.dump_request(params)
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
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
