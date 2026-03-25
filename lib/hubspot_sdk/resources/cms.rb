# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      # @return [HubspotSDK::Resources::Cms::Blogs]
      attr_reader :blogs

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @blogs = HubspotSDK::Resources::Cms::Blogs.new(client: client)
      end
    end
  end
end
