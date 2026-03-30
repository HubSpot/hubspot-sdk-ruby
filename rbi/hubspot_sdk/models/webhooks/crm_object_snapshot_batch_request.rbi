# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class CrmObjectSnapshotBatchRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::CrmObjectSnapshotBatchRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubspotSDK::Webhooks::CrmObjectSnapshotRequest])
        end
        attr_accessor :snapshot_requests

        sig do
          params(
            snapshot_requests:
              T::Array[HubspotSDK::Webhooks::CrmObjectSnapshotRequest::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(snapshot_requests:)
        end

        sig do
          override.returns(
            {
              snapshot_requests:
                T::Array[HubspotSDK::Webhooks::CrmObjectSnapshotRequest]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
