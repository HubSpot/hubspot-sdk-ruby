# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      class CrmObjectSnapshotBatchResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::CrmObjectSnapshotBatchResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubSpotSDK::Webhooks::CrmObjectSnapshotResponse])
        end
        attr_accessor :snapshot_responses

        sig do
          params(
            snapshot_responses:
              T::Array[HubSpotSDK::Webhooks::CrmObjectSnapshotResponse::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(snapshot_responses:)
        end

        sig do
          override.returns(
            {
              snapshot_responses:
                T::Array[HubSpotSDK::Webhooks::CrmObjectSnapshotResponse]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
