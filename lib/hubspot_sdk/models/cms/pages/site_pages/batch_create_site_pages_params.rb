# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Pages
        module SitePages
          # @see HubSpotSDK::Resources::Cms::Pages::SitePages::Batch#create_site_pages
          class BatchCreateSitePagesParams < HubSpotSDK::Models::Cms::BatchInputPage
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
