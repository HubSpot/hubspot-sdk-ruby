# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class CrmObjectSnapshotBatchResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::CrmObjectSnapshotBatchResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubspotSDK::Webhooks::CrmObjectSnapshotResponse])
        end
        attr_accessor :snapshot_responses

        sig do
          params(
            snapshot_responses:
              T::Array[HubspotSDK::Webhooks::CrmObjectSnapshotResponse::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(snapshot_responses:)
        end

        sig do
          override.returns(
            {
              snapshot_responses:
                T::Array[HubspotSDK::Webhooks::CrmObjectSnapshotResponse]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
