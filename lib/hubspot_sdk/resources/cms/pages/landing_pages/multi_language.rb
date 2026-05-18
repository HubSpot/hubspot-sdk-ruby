# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class Pages
        class LandingPages
          class MultiLanguage
            # Attach a landing page to a multi-language group.
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
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::MultiLanguageAttachToLangGroupParams
            def attach_to_lang_group(params)
              parsed, options =
                HubSpotSDK::Cms::Pages::LandingPages::MultiLanguageAttachToLangGroupParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/pages/2026-03/landing-pages/multi-language/attach-to-lang-group",
                headers: {"content-type" => "*/*", "accept" => "*/*"},
                body: parsed,
                model: StringIO,
                options: options
              )
            end

            # Create a new language variation from an existing landing page. The variation
            # will be a copy of the draft state of the source page. To preview the content,
            # you can
            # [retrieve the draft of the source landing page](/api-reference/latest/cms/pages/landing-pages/drafts/get-landing-page-draft).
            #
            # @overload create_language_variation(id:, language: nil, primary_language: nil, use_published: nil, request_options: {})
            #
            # @param id [String] ID of content to clone.
            #
            # @param language [String] Target language of new variant.
            #
            # @param primary_language [String] Language of primary content to clone.
            #
            # @param use_published [Boolean]
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Cms::PagesPage]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::MultiLanguageCreateLanguageVariationParams
            def create_language_variation(params)
              parsed, options =
                HubSpotSDK::Cms::Pages::LandingPages::MultiLanguageCreateLanguageVariationParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/pages/2026-03/landing-pages/multi-language/create-language-variation",
                headers: {"content-type" => "*/*"},
                body: parsed,
                model: HubSpotSDK::Cms::PagesPage,
                options: options
              )
            end

            # Detach a landing page from a multi-language group.
            #
            # @overload detach_from_lang_group(id:, request_options: {})
            #
            # @param id [String] ID of the object to remove from a multi-language group.
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [StringIO]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::MultiLanguageDetachFromLangGroupParams
            def detach_from_lang_group(params)
              parsed, options =
                HubSpotSDK::Cms::Pages::LandingPages::MultiLanguageDetachFromLangGroupParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/pages/2026-03/landing-pages/multi-language/detach-from-lang-group",
                headers: {"content-type" => "*/*", "accept" => "*/*"},
                body: parsed,
                model: StringIO,
                options: options
              )
            end

            # Set a landing page as the primary language of a multi-language group.
            #
            # @overload set_new_lang_primary(id:, request_options: {})
            #
            # @param id [String] ID of object to set as primary in multi-language group.
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::MultiLanguageSetNewLangPrimaryParams
            def set_new_lang_primary(params)
              parsed, options =
                HubSpotSDK::Cms::Pages::LandingPages::MultiLanguageSetNewLangPrimaryParams.dump_request(params)
              @client.request(
                method: :put,
                path: "cms/pages/2026-03/landing-pages/multi-language/set-new-lang-primary",
                headers: {"content-type" => "*/*"},
                body: parsed,
                model: NilClass,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubSpotSDK::Models::Cms::Pages::LandingPages::MultiLanguageUpdateLanguagesParams}
            # for more details.
            #
            # Explicitly set new languages for each landing page in a multi-language group.
            #
            # @overload update_languages(languages:, primary_id:, request_options: {})
            #
            # @param languages [Hash{Symbol=>Symbol, HubSpotSDK::Models::Cms::UpdateLanguagesRequestVNext::Language}] Map of object IDs to associated languages of object in the multi-language group.
            #
            # @param primary_id [String] ID of the primary object in the multi-language group.
            #
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [StringIO]
            #
            # @see HubSpotSDK::Models::Cms::Pages::LandingPages::MultiLanguageUpdateLanguagesParams
            def update_languages(params)
              parsed, options =
                HubSpotSDK::Cms::Pages::LandingPages::MultiLanguageUpdateLanguagesParams.dump_request(params)
              @client.request(
                method: :post,
                path: "cms/pages/2026-03/landing-pages/multi-language/update-languages",
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
            end
          end
        end
      end
    end
  end
end
