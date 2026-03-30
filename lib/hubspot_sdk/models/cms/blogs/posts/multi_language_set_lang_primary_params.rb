# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        module Posts
          # @see HubspotSDK::Resources::Cms::Blogs::Posts::MultiLanguage#set_lang_primary
          class MultiLanguageSetLangPrimaryParams < HubspotSDK::Models::Cms::SetNewLanguagePrimaryRequestVNext
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
