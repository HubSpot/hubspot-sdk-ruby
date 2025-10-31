# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PublicCRMSearchRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PublicCRMSearchRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::CRM::Filter]) }
        attr_accessor :filters

        sig { returns(String) }
        attr_accessor :query

        sig { returns(T::Array[String]) }
        attr_accessor :sorts

        sig do
          params(
            filters: T::Array[HubspotSDK::CRM::Filter::OrHash],
            query: String,
            sorts: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(filters:, query:, sorts:)
        end

        sig do
          override.returns(
            {
              filters: T::Array[HubspotSDK::CRM::Filter],
              query: String,
              sorts: T::Array[String]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
