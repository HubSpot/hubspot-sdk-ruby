# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PortalFlagStateBatchDeleteRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PortalFlagStateBatchDeleteRequest,
              HubspotSDK::Internal::AnyHash
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
