# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class SequenceGetEnrollmentByContactIDParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::SequenceGetEnrollmentByContactIDParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :contact_id

        sig do
          params(
            contact_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(contact_id:, request_options: {})
        end

        sig do
          override.returns(
            { contact_id: String, request_options: HubSpotSDK::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
