# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        sig { returns(HubspotSDK::Resources::Cms::Blogs::Posts) }
        attr_reader :posts

        sig { returns(HubspotSDK::Resources::Cms::Blogs::Settings) }
        attr_reader :settings

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
