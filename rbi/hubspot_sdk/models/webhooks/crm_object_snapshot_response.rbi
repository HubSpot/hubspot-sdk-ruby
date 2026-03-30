# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class CrmObjectSnapshotResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::CrmObjectSnapshotResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :object_id_

        sig { returns(String) }
        attr_accessor :object_type_id

        sig { returns(Integer) }
        attr_accessor :portal_id

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
          object_id_:,
          object_type_id:,
          portal_id:,
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
