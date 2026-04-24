# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class CrmObjectSnapshotResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::CrmObjectSnapshotResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # An integer representing the unique identifier of the CRM object for which the
        # snapshot is taken.
        sig { returns(Integer) }
        attr_accessor :object_id_

        # A string indicating the type of the CRM object, such as contact, company, or
        # deal.
        sig { returns(String) }
        attr_accessor :object_type_id

        # An integer representing the unique identifier of the HubSpot portal associated
        # with the CRM object.
        sig { returns(Integer) }
        attr_accessor :portal_id

        # A UUID string representing the status identifier of the snapshot request,
        # indicating the current state of the snapshot process.
        sig { returns(String) }
        attr_accessor :snapshot_status_id

        sig do
          params(
            object_id_: Integer,
            object_type_id: String,
            portal_id: Integer,
            snapshot_status_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # An integer representing the unique identifier of the CRM object for which the
          # snapshot is taken.
          object_id_:,
          # A string indicating the type of the CRM object, such as contact, company, or
          # deal.
          object_type_id:,
          # An integer representing the unique identifier of the HubSpot portal associated
          # with the CRM object.
          portal_id:,
          # A UUID string representing the status identifier of the snapshot request,
          # indicating the current state of the snapshot process.
          snapshot_status_id:
        )
        end

        sig do
          override.returns(
            {
              object_id_: Integer,
              object_type_id: String,
              portal_id: Integer,
              snapshot_status_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
