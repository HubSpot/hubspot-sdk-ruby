# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Pages
        # @see HubspotSDK::Resources::Cms::Pages::ABTests#rerun_site_page_test
        class ABTestRerunSitePageTestParams < HubspotSDK::Models::Cms::AbTestRerunRequestVNext
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
