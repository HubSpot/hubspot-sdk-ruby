# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PipelineLimitResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PipelineLimitResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Crm::CustomObjectRecordLimitResponse) }
        attr_reader :custom_object_types

        sig do
          params(
            custom_object_types:
              HubspotSDK::Crm::CustomObjectRecordLimitResponse::OrHash
          ).void
        end
        attr_writer :custom_object_types

        sig { returns(T::Array[HubspotSDK::Crm::LimitAndUsageForObjectType]) }
        attr_accessor :hubspot_defined_object_types

        sig do
          params(
            custom_object_types:
              HubspotSDK::Crm::CustomObjectRecordLimitResponse::OrHash,
            hubspot_defined_object_types:
              T::Array[HubspotSDK::Crm::LimitAndUsageForObjectType::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(custom_object_types:, hubspot_defined_object_types:)
        end

        sig do
          override.returns(
            {
              custom_object_types:
                HubspotSDK::Crm::CustomObjectRecordLimitResponse,
              hubspot_defined_object_types:
                T::Array[HubspotSDK::Crm::LimitAndUsageForObjectType]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
