# typed: strong

module HubspotSDK
  module Models
    module Crm
      class CollectionResponsePublicAuditInfoNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::CollectionResponsePublicAuditInfoNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Crm::PublicAuditInfo]) }
        attr_accessor :results

        sig do
          params(
            results: T::Array[HubspotSDK::Crm::PublicAuditInfo::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns(
            { results: T::Array[HubspotSDK::Crm::PublicAuditInfo] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
