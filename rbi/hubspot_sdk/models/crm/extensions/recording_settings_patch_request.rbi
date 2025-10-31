# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class RecordingSettingsPatchRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Extensions::RecordingSettingsPatchRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T.nilable(String)) }
          attr_reader :url_to_retrieve_authed_recording

          sig { params(url_to_retrieve_authed_recording: String).void }
          attr_writer :url_to_retrieve_authed_recording

          sig do
            params(url_to_retrieve_authed_recording: String).returns(
              T.attached_class
            )
          end
          def self.new(url_to_retrieve_authed_recording: nil)
          end

          sig { override.returns({ url_to_retrieve_authed_recording: String }) }
          def to_hash
          end
        end
      end
    end
  end
end
