# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PipelineLimitResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PipelineLimitResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubSpotSDK::Crm::CustomObjectRecordLimitResponse) }
        attr_reader :custom_object_types

        sig do
          params(
            custom_object_types:
              HubSpotSDK::Crm::CustomObjectRecordLimitResponse::OrHash
          ).void
        end
        attr_writer :custom_object_types

        sig { returns(T::Array[HubSpotSDK::Crm::LimitAndUsageForObjectType]) }
        attr_accessor :hubspot_defined_object_types

        sig do
          params(
            custom_object_types:
              HubSpotSDK::Crm::CustomObjectRecordLimitResponse::OrHash,
            hubspot_defined_object_types:
              T::Array[HubSpotSDK::Crm::LimitAndUsageForObjectType::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(custom_object_types:, hubspot_defined_object_types:)
        end

        sig do
          override.returns(
            {
              custom_object_types:
                HubSpotSDK::Crm::CustomObjectRecordLimitResponse,
              hubspot_defined_object_types:
                T::Array[HubSpotSDK::Crm::LimitAndUsageForObjectType]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
