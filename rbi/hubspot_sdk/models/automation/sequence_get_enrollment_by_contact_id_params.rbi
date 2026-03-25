# typed: strong

module HubspotSDK
  module Models
    module Automation
      class SequenceGetEnrollmentByContactIDParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::SequenceGetEnrollmentByContactIDParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :contact_id

        sig do
          params(
            contact_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(contact_id:, request_options: {})
        end

        sig do
          override.returns(
            { contact_id: String, request_options: HubspotSDK::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
