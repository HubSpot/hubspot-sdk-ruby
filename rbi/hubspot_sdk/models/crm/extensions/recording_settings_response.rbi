# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class RecordingSettingsResponse < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::RecordingSettingsResponse,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The URL used to retrieve authenticated call recordings.
          sig { returns(String) }
          attr_accessor :url_to_retrieve_authed_recording

          sig do
            params(url_to_retrieve_authed_recording: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # The URL used to retrieve authenticated call recordings.
            url_to_retrieve_authed_recording:
          )
          end

          sig { override.returns({ url_to_retrieve_authed_recording: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
