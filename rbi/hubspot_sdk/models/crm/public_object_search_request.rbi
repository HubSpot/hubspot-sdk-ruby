# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PublicObjectSearchRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::PublicObjectSearchRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # A paging cursor token for retrieving subsequent pages.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # Up to 6 groups of filters defining additional query criteria.
        sig { returns(T.nilable(T::Array[HubspotSDK::CRM::FilterGroup])) }
        attr_reader :filter_groups

        sig do
          params(
            filter_groups: T::Array[HubspotSDK::CRM::FilterGroup::OrHash]
          ).void
        end
        attr_writer :filter_groups

        # The maximum results to return, up to 200 objects.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # A list of property names to include in the response.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :properties

        sig { params(properties: T::Array[String]).void }
        attr_writer :properties

        # The search query string, up to 3000 characters.
        sig { returns(T.nilable(String)) }
        attr_reader :query

        sig { params(query: String).void }
        attr_writer :query

        # Specifies sorting order based on object properties.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :sorts

        sig { params(sorts: T::Array[String]).void }
        attr_writer :sorts

        # Describes a search request
        sig do
          params(
            after: String,
            filter_groups: T::Array[HubspotSDK::CRM::FilterGroup::OrHash],
            limit: Integer,
            properties: T::Array[String],
            query: String,
            sorts: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # A paging cursor token for retrieving subsequent pages.
          after: nil,
          # Up to 6 groups of filters defining additional query criteria.
          filter_groups: nil,
          # The maximum results to return, up to 200 objects.
          limit: nil,
          # A list of property names to include in the response.
          properties: nil,
          # The search query string, up to 3000 characters.
          query: nil,
          # Specifies sorting order based on object properties.
          sorts: nil
        )
        end

        sig do
          override.returns(
            {
              after: String,
              filter_groups: T::Array[HubspotSDK::CRM::FilterGroup],
              limit: Integer,
              properties: T::Array[String],
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
