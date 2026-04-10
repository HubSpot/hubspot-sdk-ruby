# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class CollectionResponsePublicAuditLog < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::CollectionResponsePublicAuditLog,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Cms::PublicAuditLog]) }
        attr_accessor :results

        sig { returns(T.nilable(HubSpotSDK::Paging)) }
        attr_reader :paging

        sig { params(paging: HubSpotSDK::Paging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results: T::Array[HubSpotSDK::Cms::PublicAuditLog::OrHash],
            paging: HubSpotSDK::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(results:, paging: nil)
        end

        sig do
          override.returns(
            {
              results: T::Array[HubSpotSDK::Cms::PublicAuditLog],
              paging: HubSpotSDK::Paging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
