# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Extensions
        class VideoConferencing
          # @return [HubspotSDK::Resources::CRM::Extensions::VideoConferencing::Settings]
          attr_reader :settings

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
            @settings = HubspotSDK::Resources::CRM::Extensions::VideoConferencing::Settings.new(client: client)
          end
        end
      end
    end
  end
end
