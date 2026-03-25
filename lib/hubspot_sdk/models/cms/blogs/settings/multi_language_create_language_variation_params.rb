# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        module Settings
          # @see HubspotSDK::Resources::Cms::Blogs::Settings::MultiLanguage#create_language_variation
          class MultiLanguageCreateLanguageVariationParams < HubspotSDK::Models::Cms::Blogs::BlogLanguageCloneRequestVNext
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
