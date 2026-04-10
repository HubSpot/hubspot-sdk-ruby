# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class RecordingSettingsPatchRequest < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::RecordingSettingsPatchRequest,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # The URL used to access authenticated call recordings.
          sig { returns(T.nilable(String)) }
          attr_reader :url_to_retrieve_authed_recording

          sig { params(url_to_retrieve_authed_recording: String).void }
          attr_writer :url_to_retrieve_authed_recording

          sig do
            params(url_to_retrieve_authed_recording: String).returns(
              T.attached_class
            )
          end
          def self.new(
            # The URL used to access authenticated call recordings.
            url_to_retrieve_authed_recording: nil
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
