# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class Pages
        # @return [HubSpotSDK::Resources::Cms::Pages::LandingPages]
        attr_reader :landing_pages

        # @return [HubSpotSDK::Resources::Cms::Pages::SitePages]
        attr_reader :site_pages

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @landing_pages = HubSpotSDK::Resources::Cms::Pages::LandingPages.new(client: client)
          @site_pages = HubSpotSDK::Resources::Cms::Pages::SitePages.new(client: client)
        end
      end
    end
  end
end
