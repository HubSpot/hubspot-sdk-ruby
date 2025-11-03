# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class RecordingSettingsRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::RecordingSettingsRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :url_to_retrieve_authed_recording

          sig do
            params(url_to_retrieve_authed_recording: String).returns(
              T.attached_class
            )
          end
          def self.new(url_to_retrieve_authed_recording:)
          end

          sig { override.returns({ url_to_retrieve_authed_recording: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
