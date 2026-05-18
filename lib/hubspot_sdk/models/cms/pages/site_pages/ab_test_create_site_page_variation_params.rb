# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Pages
        module SitePages
          # @see HubSpotSDK::Resources::Cms::Pages::SitePages::AbTest#create_site_page_variation
          class AbTestCreateSitePageVariationParams < HubSpotSDK::Models::AbTestCreateRequestVNext
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
