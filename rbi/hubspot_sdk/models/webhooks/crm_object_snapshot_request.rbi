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

        # An integer representing the unique identifier of the CRM object for which the
        # snapshot is being requested.
        sig { returns(Integer) }
        attr_accessor :object_id_

        # A string representing the type identifier of the CRM object.
        sig { returns(String) }
        attr_accessor :object_type_id

        # An integer representing the unique identifier of the HubSpot portal.
        sig { returns(Integer) }
        attr_accessor :portal_id

        # An array of strings, each representing a property of the CRM object to be
        # included in the snapshot.
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
        def self.new(
          # An integer representing the unique identifier of the CRM object for which the
          # snapshot is being requested.
          object_id_:,
          # A string representing the type identifier of the CRM object.
          object_type_id:,
          # An integer representing the unique identifier of the HubSpot portal.
          portal_id:,
          # An array of strings, each representing a property of the CRM object to be
          # included in the snapshot.
          properties:
        )
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
