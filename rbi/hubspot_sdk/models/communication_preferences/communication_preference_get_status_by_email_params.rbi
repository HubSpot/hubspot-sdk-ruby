# typed: strong

module HubspotSDK
  module Models
    module CommunicationPreferences
      class CommunicationPreferenceGetStatusByEmailParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CommunicationPreferences::CommunicationPreferenceGetStatusByEmailParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :email_address

        sig do
          params(
            email_address: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(email_address:, request_options: {})
        end

        sig do
          override.returns(
            {
              email_address: String,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
