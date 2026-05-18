# typed: strong

module HubSpotSDK
  module Resources
    class Cms
      class Pages
        sig { returns(HubSpotSDK::Resources::Cms::Pages::LandingPages) }
        attr_reader :landing_pages

        sig { returns(HubSpotSDK::Resources::Cms::Pages::SitePages) }
        attr_reader :site_pages

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
