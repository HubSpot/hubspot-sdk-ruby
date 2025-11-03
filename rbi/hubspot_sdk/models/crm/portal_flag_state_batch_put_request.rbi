# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PortalFlagStateBatchPutRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PortalFlagStateBatchPutRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Crm::BatchPortalEntry]) }
        attr_accessor :portal_states

        sig do
          params(
            portal_states: T::Array[HubspotSDK::Crm::BatchPortalEntry::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(portal_states:)
        end

        sig do
          override.returns(
            { portal_states: T::Array[HubspotSDK::Crm::BatchPortalEntry] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
