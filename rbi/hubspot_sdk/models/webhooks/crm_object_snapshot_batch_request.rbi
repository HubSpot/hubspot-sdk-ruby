# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class CrmObjectSnapshotBatchRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::CrmObjectSnapshotBatchRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubSpotSDK::Webhooks::CrmObjectSnapshotRequest])
        end
        attr_accessor :snapshot_requests

        sig do
          params(
            snapshot_requests:
              T::Array[HubSpotSDK::Webhooks::CrmObjectSnapshotRequest::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(snapshot_requests:)
        end

        sig do
          override.returns(
            {
              snapshot_requests:
                T::Array[HubSpotSDK::Webhooks::CrmObjectSnapshotRequest]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
