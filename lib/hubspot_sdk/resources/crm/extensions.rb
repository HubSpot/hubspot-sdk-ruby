# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Extensions
        # @return [HubspotSDK::Resources::CRM::Extensions::Calling]
        attr_reader :calling

        # @return [HubspotSDK::Resources::CRM::Extensions::Cards]
        attr_reader :cards

        # @return [HubspotSDK::Resources::CRM::Extensions::VideoConferencing]
        attr_reader :video_conferencing

        # @return [HubspotSDK::Resources::CRM::Extensions::Videoconferencing]
        attr_reader :videoconferencing

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @calling = HubspotSDK::Resources::CRM::Extensions::Calling.new(client: client)
          @cards = HubspotSDK::Resources::CRM::Extensions::Cards.new(client: client)
          @video_conferencing = HubspotSDK::Resources::CRM::Extensions::VideoConferencing.new(client: client)
          @videoconferencing = HubspotSDK::Resources::CRM::Extensions::Videoconferencing.new(client: client)
        end
      end
    end
  end
end
