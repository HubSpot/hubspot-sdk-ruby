# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Posts
          class MultiLanguage
            # Attach a blog post to a
            # [multi-language group](https://developers.hubspot.com/docs/guides/cms/content/multi-language-content).
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
            # @see HubspotSDK::Models::Cms::Blogs::Posts::MultiLanguageAttachToLangGroupParams
            def attach_to_lang_group(params)
              parsed, options =
                HubspotSDK::Cms::Blogs::Posts::MultiLanguageAttachToLangGroupParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/blogs/2026-03/posts/multi-language/attach-to-lang-group",
                headers: {"content-type" => "*/*", "accept" => "*/*"},
                body: parsed,
                model: StringIO,
                options: options
              )
            end

            # Create a new language variation from an existing blog post
            #
            # @overload create_lang_variation(id:, language: nil, request_options: {})
            #
            # @param id [String] ID of blog post to clone.
            #
            # @param language [String] Target language of new variant.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [StringIO]
            #
            # @see HubspotSDK::Models::Cms::Blogs::Posts::MultiLanguageCreateLangVariationParams
            def create_lang_variation(params)
              parsed, options =
                HubspotSDK::Cms::Blogs::Posts::MultiLanguageCreateLangVariationParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/blogs/2026-03/posts/multi-language/create-language-variation",
                headers: {"content-type" => "*/*", "accept" => "*/*"},
                body: parsed,
                model: StringIO,
                options: options
              )
            end

            # Detach a blog post from a
            # [multi-language group](https://developers.hubspot.com/docs/guides/cms/content/multi-language-content).
            #
            # @overload detach_from_lang_group(id:, request_options: {})
            #
            # @param id [String] ID of the object to remove from a multi-language group.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [StringIO]
            #
            # @see HubspotSDK::Models::Cms::Blogs::Posts::MultiLanguageDetachFromLangGroupParams
            def detach_from_lang_group(params)
              parsed, options =
                HubspotSDK::Cms::Blogs::Posts::MultiLanguageDetachFromLangGroupParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/blogs/2026-03/posts/multi-language/detach-from-lang-group",
                headers: {"content-type" => "*/*", "accept" => "*/*"},
                body: parsed,
                model: StringIO,
                options: options
              )
            end

            # Set the primary language of a
            # [multi-language group](https://developers.hubspot.com/docs/guides/cms/content/multi-language-content)
            # to the language of the provided post (specified as an ID in the request body)
            #
            # @overload set_lang_primary(id:, request_options: {})
            #
            # @param id [String] ID of object to set as primary in multi-language group.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubspotSDK::Models::Cms::Blogs::Posts::MultiLanguageSetLangPrimaryParams
            def set_lang_primary(params)
              parsed, options = HubspotSDK::Cms::Blogs::Posts::MultiLanguageSetLangPrimaryParams.dump_request(params)
              @client.request(
                method: :put,
                path: "cms/blogs/2026-03/posts/multi-language/set-new-lang-primary",
                headers: {"content-type" => "*/*"},
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::Cms::Blogs::Posts::MultiLanguageUpdateLangsParams} for more
            # details.
            #
            # Explicitly set new languages for each post in a
            # [multi-language group](https://developers.hubspot.com/docs/guides/cms/content/multi-language-content).
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
            # @see HubspotSDK::Models::Cms::Blogs::Posts::MultiLanguageUpdateLangsParams
            def update_langs(params)
              parsed, options = HubspotSDK::Cms::Blogs::Posts::MultiLanguageUpdateLangsParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/blogs/2026-03/posts/multi-language/update-languages",
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
end
