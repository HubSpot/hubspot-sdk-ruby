# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class Pages
        sig { returns(HubspotSDK::Resources::Cms::Pages::LandingPages) }
        attr_reader :landing_pages

        sig { returns(HubspotSDK::Resources::Cms::Pages::SitePages) }
        attr_reader :site_pages

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
