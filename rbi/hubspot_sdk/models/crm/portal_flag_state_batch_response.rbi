# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PortalFlagStateBatchResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PortalFlagStateBatchResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Crm::PortalFlagStateResponse]) }
        attr_accessor :portal_flag_states

        sig do
          params(
            portal_flag_states:
              T::Array[HubspotSDK::Crm::PortalFlagStateResponse::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(portal_flag_states:)
        end

        sig do
          override.returns(
            {
              portal_flag_states:
                T::Array[HubspotSDK::Crm::PortalFlagStateResponse]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
