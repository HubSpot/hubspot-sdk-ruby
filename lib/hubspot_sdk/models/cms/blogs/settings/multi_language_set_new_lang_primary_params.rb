# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        module Settings
          # @see HubspotSDK::Resources::Cms::Blogs::Settings::MultiLanguage#set_new_lang_primary
          class MultiLanguageSetNewLangPrimaryParams < HubspotSDK::Models::Cms::SetNewLanguagePrimaryRequestVNext
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            # @!method initialize(request_options: {})
            #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
