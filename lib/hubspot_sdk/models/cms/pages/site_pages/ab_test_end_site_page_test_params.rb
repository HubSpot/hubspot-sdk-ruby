# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Pages
        module SitePages
          # @see HubSpotSDK::Resources::Cms::Pages::SitePages::AbTest#end_site_page_test
          class AbTestEndSitePageTestParams < HubSpotSDK::Models::Cms::AbTestEndRequestVNext
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
