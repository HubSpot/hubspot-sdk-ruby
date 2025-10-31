# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Extensions
        class Calling
          # @return [HubspotSDK::Resources::CRM::Extensions::Calling::ChannelConnectionSettings]
          attr_reader :channel_connection_settings

          # @return [HubspotSDK::Resources::CRM::Extensions::Calling::RecordingSettings]
          attr_reader :recording_settings

          # @return [HubspotSDK::Resources::CRM::Extensions::Calling::Settings]
          attr_reader :settings

          # @return [HubspotSDK::Resources::CRM::Extensions::Calling::Transcripts]
          attr_reader :transcripts

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
            @channel_connection_settings =
              HubspotSDK::Resources::CRM::Extensions::Calling::ChannelConnectionSettings.new(client: client)
            @recording_settings =
              HubspotSDK::Resources::CRM::Extensions::Calling::RecordingSettings.new(client: client)
            @settings = HubspotSDK::Resources::CRM::Extensions::Calling::Settings.new(client: client)
            @transcripts = HubspotSDK::Resources::CRM::Extensions::Calling::Transcripts.new(client: client)
          end
        end
      end
    end
  end
end
