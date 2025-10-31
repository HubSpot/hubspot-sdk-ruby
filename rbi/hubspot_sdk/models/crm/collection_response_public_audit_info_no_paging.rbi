# typed: strong

module HubspotSDK
  module Models
    module CRM
      class CollectionResponsePublicAuditInfoNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::CollectionResponsePublicAuditInfoNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::CRM::PublicAuditInfo]) }
        attr_accessor :results

        sig do
          params(
            results: T::Array[HubspotSDK::CRM::PublicAuditInfo::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns(
            { results: T::Array[HubspotSDK::CRM::PublicAuditInfo] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
