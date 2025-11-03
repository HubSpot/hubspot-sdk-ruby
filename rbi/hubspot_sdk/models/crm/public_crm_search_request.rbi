# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicCrmSearchRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicCrmSearchRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Crm::Filter]) }
        attr_accessor :filters

        sig { returns(String) }
        attr_accessor :query

        sig { returns(T::Array[String]) }
        attr_accessor :sorts

        sig do
          params(
            filters: T::Array[HubspotSDK::Crm::Filter::OrHash],
            query: String,
            sorts: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(filters:, query:, sorts:)
        end

        sig do
          override.returns(
            {
              filters: T::Array[HubspotSDK::Crm::Filter],
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
