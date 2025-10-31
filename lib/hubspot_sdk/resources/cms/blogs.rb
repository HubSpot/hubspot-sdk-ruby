# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Blogs
        # @return [HubspotSDK::Resources::Cms::Blogs::Authors]
        attr_reader :authors

        # @return [HubspotSDK::Resources::Cms::Blogs::Posts]
        attr_reader :posts

        # @return [HubspotSDK::Resources::Cms::Blogs::Settings]
        attr_reader :settings

        # @return [HubspotSDK::Resources::Cms::Blogs::Tags]
        attr_reader :tags

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @authors = HubspotSDK::Resources::Cms::Blogs::Authors.new(client: client)
          @posts = HubspotSDK::Resources::Cms::Blogs::Posts.new(client: client)
          @settings = HubspotSDK::Resources::Cms::Blogs::Settings.new(client: client)
          @tags = HubspotSDK::Resources::Cms::Blogs::Tags.new(client: client)
        end
      end
    end
  end
end
