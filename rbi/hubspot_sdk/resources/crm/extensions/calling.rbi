# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Extensions
        class Calling
          sig do
            returns(
              HubspotSDK::Resources::Crm::Extensions::Calling::ChannelConnectionSettings
            )
          end
          attr_reader :channel_connection_settings

          sig do
            returns(
              HubspotSDK::Resources::Crm::Extensions::Calling::RecordingSettings
            )
          end
          attr_reader :recording_settings

          sig do
            returns(HubspotSDK::Resources::Crm::Extensions::Calling::Settings)
          end
          attr_reader :settings

          sig do
            returns(
              HubspotSDK::Resources::Crm::Extensions::Calling::Transcripts
            )
          end
          attr_reader :transcripts

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
