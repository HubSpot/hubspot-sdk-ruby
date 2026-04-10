# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PortalFlagStateBatchResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PortalFlagStateBatchResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Crm::PortalFlagStateResponse]) }
        attr_accessor :portal_flag_states

        sig do
          params(
            portal_flag_states:
              T::Array[HubSpotSDK::Crm::PortalFlagStateResponse::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(portal_flag_states:)
        end

        sig do
          override.returns(
            {
              portal_flag_states:
                T::Array[HubSpotSDK::Crm::PortalFlagStateResponse]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
