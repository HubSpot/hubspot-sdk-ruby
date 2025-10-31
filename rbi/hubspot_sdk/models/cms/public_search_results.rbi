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

        sig { returns(Integer) }
        attr_accessor :limit

        sig { returns(Integer) }
        attr_accessor :offset

        sig { returns(Integer) }
        attr_accessor :page

        sig { returns(T::Array[HubspotSDK::Cms::ContentSearchResult]) }
        attr_accessor :results

        sig { returns(Integer) }
        attr_accessor :total

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
        def self.new(limit:, offset:, page:, results:, total:, search_term: nil)
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
