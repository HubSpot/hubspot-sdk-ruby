# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Objects
        class PublicObjectSearchRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Objects::PublicObjectSearchRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          # A paging cursor token for retrieving subsequent pages.
          sig { returns(String) }
          attr_accessor :after

          # Up to 6 groups of filters defining additional query criteria.
          sig { returns(T::Array[HubspotSDK::CRM::FilterGroup]) }
          attr_accessor :filter_groups

          # The maximum results to return, up to 200 objects.
          sig { returns(Integer) }
          attr_accessor :limit

          # A list of property names to include in the response.
          sig { returns(T::Array[String]) }
          attr_accessor :properties

          # Specifies sorting order based on object properties.
          sig { returns(T::Array[String]) }
          attr_accessor :sorts

          # The search query string, up to 3000 characters.
          sig { returns(T.nilable(String)) }
          attr_reader :query

          sig { params(query: String).void }
          attr_writer :query

          # Describes a search request
          sig do
            params(
              after: String,
              filter_groups: T::Array[HubspotSDK::CRM::FilterGroup::OrHash],
              limit: Integer,
              properties: T::Array[String],
              sorts: T::Array[String],
              query: String
            ).returns(T.attached_class)
          end
          def self.new(
            # A paging cursor token for retrieving subsequent pages.
            after:,
            # Up to 6 groups of filters defining additional query criteria.
            filter_groups:,
            # The maximum results to return, up to 200 objects.
            limit:,
            # A list of property names to include in the response.
            properties:,
            # Specifies sorting order based on object properties.
            sorts:,
            # The search query string, up to 3000 characters.
            query: nil
          )
          end

          sig do
            override.returns(
              {
                after: String,
                filter_groups: T::Array[HubspotSDK::CRM::FilterGroup],
                limit: Integer,
                properties: T::Array[String],
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
end
