# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PortalFlagStateBatchResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PortalFlagStateBatchResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::CRM::PortalFlagStateResponse]) }
        attr_accessor :portal_flag_states

        sig do
          params(
            portal_flag_states:
              T::Array[HubspotSDK::CRM::PortalFlagStateResponse::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(portal_flag_states:)
        end

        sig do
          override.returns(
            {
              portal_flag_states:
                T::Array[HubspotSDK::CRM::PortalFlagStateResponse]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
