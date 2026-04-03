# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Pages
        class MultiLanguage
          # Attach a site page to a multi-language group.
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
          # @see HubspotSDK::Models::Cms::Pages::MultiLanguageAttachToLangGroupParams
          def attach_to_lang_group(params)
            parsed, options = HubspotSDK::Cms::Pages::MultiLanguageAttachToLangGroupParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/site-pages/multi-language/attach-to-lang-group",
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed,
              model: StringIO,
              options: options
            )
          end

          # Create a new language variation from an existing site page
          #
          # @overload create_language_variation(id:, language: nil, primary_language: nil, request_options: {})
          #
          # @param id [String] ID of content to clone.
          #
          # @param language [String] Target language of new variant.
          #
          # @param primary_language [String] Language of primary content to clone.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::CmsPage]
          #
          # @see HubspotSDK::Models::Cms::Pages::MultiLanguageCreateLanguageVariationParams
          def create_language_variation(params)
            parsed, options = HubspotSDK::Cms::Pages::MultiLanguageCreateLanguageVariationParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/site-pages/multi-language/create-language-variation",
              headers: {"content-type" => "*/*"},
              body: parsed,
              model: HubspotSDK::Cms::CmsPage,
              options: options
            )
          end

          # Detach a website page from a multi-language group.
          #
          # @overload detach_from_lang_group(id:, request_options: {})
          #
          # @param id [String] ID of the object to remove from a multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Pages::MultiLanguageDetachFromLangGroupParams
          def detach_from_lang_group(params)
            parsed, options = HubspotSDK::Cms::Pages::MultiLanguageDetachFromLangGroupParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/site-pages/multi-language/detach-from-lang-group",
              headers: {"content-type" => "*/*", "accept" => "*/*"},
              body: parsed,
              model: StringIO,
              options: options
            )
          end

          # Set a site page as the primary language of a multi-language group.
          #
          # @overload set_new_lang_primary(id:, request_options: {})
          #
          # @param id [String] ID of object to set as primary in multi-language group.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Pages::MultiLanguageSetNewLangPrimaryParams
          def set_new_lang_primary(params)
            parsed, options = HubspotSDK::Cms::Pages::MultiLanguageSetNewLangPrimaryParams.dump_request(params)
            @client.request(
              method: :put,
              path: "cms/pages/2026-03/site-pages/multi-language/set-new-lang-primary",
              headers: {"content-type" => "*/*"},
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Pages::MultiLanguageUpdateLanguagesParams} for more
          # details.
          #
          # Explicitly set new languages for each site page in a multi-language group.
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
          # @see HubspotSDK::Models::Cms::Pages::MultiLanguageUpdateLanguagesParams
          def update_languages(params)
            parsed, options = HubspotSDK::Cms::Pages::MultiLanguageUpdateLanguagesParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/pages/2026-03/site-pages/multi-language/update-languages",
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
