# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Pages
        module LandingPages
          # @see HubSpotSDK::Resources::Cms::Pages::LandingPages::AbTest#rerun_landing_page_test
          class AbTestRerunLandingPageTestParams < HubSpotSDK::Models::Cms::AbTestRerunRequestVNext
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
