# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PortalFlagStateBatchPutRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PortalFlagStateBatchPutRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::CRM::BatchPortalEntry]) }
        attr_accessor :portal_states

        sig do
          params(
            portal_states: T::Array[HubspotSDK::CRM::BatchPortalEntry::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(portal_states:)
        end

        sig do
          override.returns(
            { portal_states: T::Array[HubspotSDK::CRM::BatchPortalEntry] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
