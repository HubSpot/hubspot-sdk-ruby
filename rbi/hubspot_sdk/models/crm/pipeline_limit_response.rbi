# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PipelineLimitResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PipelineLimitResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::CRM::CustomObjectRecordLimitResponse) }
        attr_reader :custom_object_types

        sig do
          params(
            custom_object_types:
              HubspotSDK::CRM::CustomObjectRecordLimitResponse::OrHash
          ).void
        end
        attr_writer :custom_object_types

        sig { returns(T::Array[HubspotSDK::CRM::LimitAndUsageForObjectType]) }
        attr_accessor :hubspot_defined_object_types

        sig do
          params(
            custom_object_types:
              HubspotSDK::CRM::CustomObjectRecordLimitResponse::OrHash,
            hubspot_defined_object_types:
              T::Array[HubspotSDK::CRM::LimitAndUsageForObjectType::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(custom_object_types:, hubspot_defined_object_types:)
        end

        sig do
          override.returns(
            {
              custom_object_types:
                HubspotSDK::CRM::CustomObjectRecordLimitResponse,
              hubspot_defined_object_types:
                T::Array[HubspotSDK::CRM::LimitAndUsageForObjectType]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
