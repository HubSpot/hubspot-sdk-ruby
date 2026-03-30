# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        class Settings
          class MultiLanguage
            # Attach a blog to a multi-language group.
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
            # @see HubspotSDK::Models::Cms::Blogs::Settings::MultiLanguageAttachToLangGroupParams
            def attach_to_lang_group(params)
              parsed, options =
                HubspotSDK::Cms::Blogs::Settings::MultiLanguageAttachToLangGroupParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/blog-settings/2026-03/settings/multi-language/attach-to-lang-group",
                headers: {"accept" => "*/*"},
                body: parsed,
                model: StringIO,
                options: options
              )
            end

            # Create a new language variation from an existing blog.
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
            # @see HubspotSDK::Models::Cms::Blogs::Settings::MultiLanguageCreateLanguageVariationParams
            def create_language_variation(params)
              parsed, options =
                HubspotSDK::Cms::Blogs::Settings::MultiLanguageCreateLanguageVariationParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/blog-settings/2026-03/settings/multi-language/create-language-variation",
                body: parsed,
                model: HubspotSDK::Cms::Blogs::Blog,
                options: options
              )
            end

            # Detaches a blog from a multi-language group.
            #
            # @overload detach_from_lang_group(id:, request_options: {})
            #
            # @param id [String] ID of the object to remove from a multi-language group.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [StringIO]
            #
            # @see HubspotSDK::Models::Cms::Blogs::Settings::MultiLanguageDetachFromLangGroupParams
            def detach_from_lang_group(params)
              parsed, options =
                HubspotSDK::Cms::Blogs::Settings::MultiLanguageDetachFromLangGroupParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/blog-settings/2026-03/settings/multi-language/detach-from-lang-group",
                headers: {"accept" => "*/*"},
                body: parsed,
                model: StringIO,
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
            # @see HubspotSDK::Models::Cms::Blogs::Settings::MultiLanguageSetNewLangPrimaryParams
            def set_new_lang_primary(params)
              parsed, options =
                HubspotSDK::Cms::Blogs::Settings::MultiLanguageSetNewLangPrimaryParams.dump_request(params)
              @client.request(
                method: :put,
                path: "cms/blog-settings/2026-03/settings/multi-language/set-new-lang-primary",
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::Cms::Blogs::Settings::MultiLanguageUpdateLanguagesParams}
            # for more details.
            #
            # Explicitly set new languages for each blog in a multi-language group.
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
            # @see HubspotSDK::Models::Cms::Blogs::Settings::MultiLanguageUpdateLanguagesParams
            def update_languages(params)
              parsed, options =
                HubspotSDK::Cms::Blogs::Settings::MultiLanguageUpdateLanguagesParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/blog-settings/2026-03/settings/multi-language/update-languages",
                headers: {"accept" => "*/*"},
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
