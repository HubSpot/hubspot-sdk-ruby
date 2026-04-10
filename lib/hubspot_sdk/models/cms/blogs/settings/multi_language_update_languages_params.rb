# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        module Settings
          # @see HubSpotSDK::Resources::Cms::Blogs::Settings::MultiLanguage#update_languages
          class MultiLanguageUpdateLanguagesParams < HubSpotSDK::Models::Cms::UpdateLanguagesRequestVNext
            extend HubSpotSDK::Internal::Type::RequestParameters::Converter
            include HubSpotSDK::Internal::Type::RequestParameters

            # @!method initialize(request_options: {})
            #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
