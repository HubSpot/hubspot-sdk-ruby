# typed: strong

module HubSpotSDK
  module Resources
    class Cms
      class Blogs
        sig { returns(HubSpotSDK::Resources::Cms::Blogs::Authors) }
        attr_reader :authors

        sig { returns(HubSpotSDK::Resources::Cms::Blogs::Posts) }
        attr_reader :posts

        sig { returns(HubSpotSDK::Resources::Cms::Blogs::Settings) }
        attr_reader :settings

        sig { returns(HubSpotSDK::Resources::Cms::Blogs::Tags) }
        attr_reader :tags

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
