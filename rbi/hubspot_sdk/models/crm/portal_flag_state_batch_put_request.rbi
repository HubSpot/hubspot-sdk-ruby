# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PortalFlagStateBatchPutRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PortalFlagStateBatchPutRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Crm::BatchPortalEntry]) }
        attr_accessor :portal_states

        sig do
          params(
            portal_states: T::Array[HubSpotSDK::Crm::BatchPortalEntry::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(portal_states:)
        end

        sig do
          override.returns(
            { portal_states: T::Array[HubSpotSDK::Crm::BatchPortalEntry] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
