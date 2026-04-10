# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicCrmSearchRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicCrmSearchRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Crm::FilterGroup]) }
        attr_accessor :filter_groups

        sig { returns(T::Array[HubSpotSDK::Crm::Filter]) }
        attr_accessor :filters

        # Defines the order in which the CRM records should be returned.
        sig { returns(T::Array[String]) }
        attr_accessor :sorts

        # The search query string, to filter CRM records.
        sig { returns(T.nilable(String)) }
        attr_reader :query

        sig { params(query: String).void }
        attr_writer :query

        sig do
          params(
            filter_groups: T::Array[HubSpotSDK::Crm::FilterGroup::OrHash],
            filters: T::Array[HubSpotSDK::Crm::Filter::OrHash],
            sorts: T::Array[String],
            query: String
          ).returns(T.attached_class)
        end
        def self.new(
          filter_groups:,
          filters:,
          # Defines the order in which the CRM records should be returned.
          sorts:,
          # The search query string, to filter CRM records.
          query: nil
        )
        end

        sig do
          override.returns(
            {
              filter_groups: T::Array[HubSpotSDK::Crm::FilterGroup],
              filters: T::Array[HubSpotSDK::Crm::Filter],
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
