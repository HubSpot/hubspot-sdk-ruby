# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Extensions
        class VideoConferencing
          # @return [HubspotSDK::Resources::Crm::Extensions::VideoConferencing::Settings]
          attr_reader :settings

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
            @settings = HubspotSDK::Resources::Crm::Extensions::VideoConferencing::Settings.new(client: client)
          end
        end
      end
    end
  end
end
