# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PortalFlagStateBatchDeleteRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PortalFlagStateBatchDeleteRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[Integer]) }
        attr_accessor :portal_ids

        sig { params(portal_ids: T::Array[Integer]).returns(T.attached_class) }
        def self.new(portal_ids:)
        end

        sig { override.returns({ portal_ids: T::Array[Integer] }) }
        def to_hash
        end
      end
    end
  end
end
