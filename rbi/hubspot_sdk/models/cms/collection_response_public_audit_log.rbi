# typed: strong

module HubspotSDK
  module Models
    module Cms
      class CollectionResponsePublicAuditLog < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::CollectionResponsePublicAuditLog,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Cms::PublicAuditLog]) }
        attr_accessor :results

        # Contains information pagination of results.
        sig { returns(T.nilable(HubspotSDK::Marketing::Paging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::Marketing::Paging::OrHash).void }
        attr_writer :paging

        # The collection of audit logs.
        sig do
          params(
            results: T::Array[HubspotSDK::Cms::PublicAuditLog::OrHash],
            paging: HubspotSDK::Marketing::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          results:,
          # Contains information pagination of results.
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Cms::PublicAuditLog],
              paging: HubspotSDK::Marketing::Paging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
