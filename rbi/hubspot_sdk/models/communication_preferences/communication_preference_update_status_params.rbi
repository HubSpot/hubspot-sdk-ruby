# typed: strong

module HubSpotSDK
  module Models
    module CommunicationPreferences
      class CommunicationPreferenceUpdateStatusParams < HubSpotSDK::Models::CommunicationPreferences::PartialPublicStatusRequest
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::CommunicationPreferences::CommunicationPreferenceUpdateStatusParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :subscriber_id_string

        sig do
          params(
            subscriber_id_string: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(subscriber_id_string:, request_options: {})
        end

        sig do
          override.returns(
            {
              subscriber_id_string: String,
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
