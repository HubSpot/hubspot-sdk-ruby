# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ListSearchResponse < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ListSearchResponse,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Whether or not there are more results to page through.
        sig { returns(T::Boolean) }
        attr_accessor :has_more

        # The lists that matched the search criteria.
        sig { returns(T::Array[HubSpotSDK::Crm::PublicObjectListSearchResult]) }
        attr_accessor :lists

        # Value to be passed in a future request to paginate through list search results.
        sig { returns(Integer) }
        attr_accessor :offset

        # The total number of lists that match the search criteria.
        sig { returns(Integer) }
        attr_accessor :total

        sig do
          params(
            has_more: T::Boolean,
            lists:
              T::Array[HubSpotSDK::Crm::PublicObjectListSearchResult::OrHash],
            offset: Integer,
            total: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether or not there are more results to page through.
          has_more:,
          # The lists that matched the search criteria.
          lists:,
          # Value to be passed in a future request to paginate through list search results.
          offset:,
          # The total number of lists that match the search criteria.
          total:
        )
        end

        sig do
          override.returns(
            {
              has_more: T::Boolean,
              lists: T::Array[HubSpotSDK::Crm::PublicObjectListSearchResult],
              offset: Integer,
              total: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
