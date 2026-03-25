# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Extensions
        # @return [HubspotSDK::Resources::Crm::Extensions::Calling]
        attr_reader :calling

        # @return [HubspotSDK::Resources::Crm::Extensions::CardsDev]
        attr_reader :cards_dev

        # @return [HubspotSDK::Resources::Crm::Extensions::VideoConferencing]
        attr_reader :video_conferencing

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @calling = HubspotSDK::Resources::Crm::Extensions::Calling.new(client: client)
          @cards_dev = HubspotSDK::Resources::Crm::Extensions::CardsDev.new(client: client)
          @video_conferencing = HubspotSDK::Resources::Crm::Extensions::VideoConferencing.new(client: client)
        end
      end
    end
  end
end
