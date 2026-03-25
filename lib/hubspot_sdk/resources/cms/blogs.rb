# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        # @return [HubspotSDK::Resources::Cms::Blogs::Posts]
        attr_reader :posts

        # @return [HubspotSDK::Resources::Cms::Blogs::Settings]
        attr_reader :settings

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @posts = HubspotSDK::Resources::Cms::Blogs::Posts.new(client: client)
          @settings = HubspotSDK::Resources::Cms::Blogs::Settings.new(client: client)
        end
      end
    end
  end
end
