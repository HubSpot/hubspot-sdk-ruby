# typed: strong

module HubspotSDK
  module Models
    module Cms
      class PublicSearchResults < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::PublicSearchResults,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The number of results returned in a single response.
        sig { returns(Integer) }
        attr_accessor :limit

        # The starting point for the next set of results in pagination.
        sig { returns(Integer) }
        attr_accessor :offset

        # The current page number in the paginated results.
        sig { returns(Integer) }
        attr_accessor :page

        sig { returns(T::Array[HubspotSDK::Cms::ContentSearchResult]) }
        attr_accessor :results

        # The total number of results found for the search term.
        sig { returns(Integer) }
        attr_accessor :total

        # The term used in the search query.
        sig { returns(T.nilable(String)) }
        attr_reader :search_term

        sig { params(search_term: String).void }
        attr_writer :search_term

        sig do
          params(
            limit: Integer,
            offset: Integer,
            page: Integer,
            results: T::Array[HubspotSDK::Cms::ContentSearchResult::OrHash],
            total: Integer,
            search_term: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The number of results returned in a single response.
          limit:,
          # The starting point for the next set of results in pagination.
          offset:,
          # The current page number in the paginated results.
          page:,
          results:,
          # The total number of results found for the search term.
          total:,
          # The term used in the search query.
          search_term: nil
        )
        end

        sig do
          override.returns(
            {
              limit: Integer,
              offset: Integer,
              page: Integer,
              results: T::Array[HubspotSDK::Cms::ContentSearchResult],
              total: Integer,
              search_term: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
