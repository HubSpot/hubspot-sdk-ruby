# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class Blogs
        # @return [HubSpotSDK::Resources::Cms::Blogs::Authors]
        attr_reader :authors

        # @return [HubSpotSDK::Resources::Cms::Blogs::Posts]
        attr_reader :posts

        # @return [HubSpotSDK::Resources::Cms::Blogs::Settings]
        attr_reader :settings

        # @return [HubSpotSDK::Resources::Cms::Blogs::Tags]
        attr_reader :tags

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @authors = HubSpotSDK::Resources::Cms::Blogs::Authors.new(client: client)
          @posts = HubSpotSDK::Resources::Cms::Blogs::Posts.new(client: client)
          @settings = HubSpotSDK::Resources::Cms::Blogs::Settings.new(client: client)
          @tags = HubSpotSDK::Resources::Cms::Blogs::Tags.new(client: client)
        end
      end
    end
  end
end
