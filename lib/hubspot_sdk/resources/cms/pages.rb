# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Pages
        # @return [HubspotSDK::Resources::Cms::Pages::LandingPages]
        attr_reader :landing_pages

        # @return [HubspotSDK::Resources::Cms::Pages::SitePages]
        attr_reader :site_pages

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @landing_pages = HubspotSDK::Resources::Cms::Pages::LandingPages.new(client: client)
          @site_pages = HubspotSDK::Resources::Cms::Pages::SitePages.new(client: client)
        end
      end
    end
  end
end
