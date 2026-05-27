# typed: strong

module HubSpotSDK
  module Models
    class CrmObjectSnapshotBatchResponse < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubSpotSDK::CrmObjectSnapshotBatchResponse,
            HubSpotSDK::Internal::AnyHash
          )
        end

      # An array of CrmObjectSnapshotResponse objects, each representing the result of a
      # snapshot operation for a specific CRM object. This property is required.
      sig { returns(T::Array[HubSpotSDK::CrmObjectSnapshotResponse]) }
      attr_accessor :snapshot_responses

      sig do
        params(
          snapshot_responses:
            T::Array[HubSpotSDK::CrmObjectSnapshotResponse::OrHash]
        ).returns(T.attached_class)
      end
      def self.new(
        # An array of CrmObjectSnapshotResponse objects, each representing the result of a
        # snapshot operation for a specific CRM object. This property is required.
        snapshot_responses:
      )
      end

      sig do
        override.returns(
          {
            snapshot_responses: T::Array[HubSpotSDK::CrmObjectSnapshotResponse]
          }
        )
      end
      def to_hash
      end
    end
  end
end
