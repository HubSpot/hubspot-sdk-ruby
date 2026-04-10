# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        module Posts
          # @see HubSpotSDK::Resources::Cms::Blogs::Posts::MultiLanguage#set_lang_primary
          class MultiLanguageSetLangPrimaryParams < HubSpotSDK::Models::Cms::SetNewLanguagePrimaryRequestVNext
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
