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

        sig { returns(T::Array[HubspotSDK::Crm::FilterGroup]) }
        attr_accessor :filter_groups

        sig { returns(T::Array[HubspotSDK::Crm::Filter]) }
        attr_accessor :filters

        sig { returns(T::Array[String]) }
        attr_accessor :sorts

        sig { returns(T.nilable(String)) }
        attr_reader :query

        sig { params(query: String).void }
        attr_writer :query

        sig do
          params(
            filter_groups: T::Array[HubspotSDK::Crm::FilterGroup::OrHash],
            filters: T::Array[HubspotSDK::Crm::Filter::OrHash],
            sorts: T::Array[String],
            query: String
          ).returns(T.attached_class)
        end
        def self.new(filter_groups:, filters:, sorts:, query: nil)
        end

        sig do
          override.returns(
            {
              filter_groups: T::Array[HubspotSDK::Crm::FilterGroup],
              filters: T::Array[HubspotSDK::Crm::Filter],
              sorts: T::Array[String],
              query: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
