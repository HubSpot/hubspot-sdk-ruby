# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Pages
        # @see HubSpotSDK::Resources::Cms::Pages::ABTests#rerun_site_page_test
        class ABTestRerunSitePageTestParams < HubSpotSDK::Models::Cms::AbTestRerunRequestVNext
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
