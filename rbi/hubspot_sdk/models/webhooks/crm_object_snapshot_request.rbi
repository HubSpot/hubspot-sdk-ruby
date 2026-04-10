# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class CrmObjectSnapshotRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::CrmObjectSnapshotRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :object_id_

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(Integer) }
        attr_accessor :portal_id

        sig { returns(T::Array[String]) }
        attr_accessor :properties

        sig do
          params(
            object_id_: Integer,
            object_type_id: String,
            portal_id: Integer,
            properties: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(object_id_:, object_type_id:, portal_id:, properties:)
        end

        sig do
          override.returns(
            {
              object_id_: Integer,
              object_type_id: String,
              portal_id: Integer,
              properties: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
