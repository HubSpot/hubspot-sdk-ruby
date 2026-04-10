# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        module Posts
          # @see HubSpotSDK::Resources::Cms::Blogs::Posts::MultiLanguage#attach_to_lang_group
          class MultiLanguageAttachToLangGroupParams < HubSpotSDK::Models::Cms::AttachToLangPrimaryRequestVNext
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
