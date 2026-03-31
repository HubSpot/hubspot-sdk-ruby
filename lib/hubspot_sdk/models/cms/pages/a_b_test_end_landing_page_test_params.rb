# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Pages
        # @see HubspotSDK::Resources::Cms::Pages::ABTests#end_landing_page_test
        class ABTestEndLandingPageTestParams < HubspotSDK::Models::Cms::AbTestEndRequestVNext
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
