# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Extensions
        # @return [HubSpotSDK::Resources::Crm::Extensions::Calling]
        attr_reader :calling

        # @return [HubSpotSDK::Resources::Crm::Extensions::CardsDev]
        attr_reader :cards_dev

        # @return [HubSpotSDK::Resources::Crm::Extensions::VideoConferencing]
        attr_reader :video_conferencing

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @calling = HubSpotSDK::Resources::Crm::Extensions::Calling.new(client: client)
          @cards_dev = HubSpotSDK::Resources::Crm::Extensions::CardsDev.new(client: client)
          @video_conferencing = HubSpotSDK::Resources::Crm::Extensions::VideoConferencing.new(client: client)
        end
      end
    end
  end
end
