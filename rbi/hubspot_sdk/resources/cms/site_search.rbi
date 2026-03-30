# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class SiteSearch
        # Return all indexed data for an asset (e.g., page, blog post, HubDB table),
        # specified by ID. This is useful when debugging why a particular asset is not
        # returned from a custom search.
        sig do
          params(
            content_id: String,
            type: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Cms::IndexedData)
        end
        def get_indexed_data(content_id, type: nil, request_options: {})
        end

        # Returns any website content matching the given search criteria for a given
        # HubSpot account. Searches can be filtered by content type, domain, or URL path.
        # Includes options for weighing results by recency and popularity, along with
        # language support.
        sig do
          params(
            analytics: T::Boolean,
            autocomplete: T::Boolean,
            boost_limit: Float,
            boost_recent: String,
            domain: T::Array[String],
            group_id: T::Array[Integer],
            hubdb_query: String,
            language:
              HubspotSDK::Cms::SiteSearchSearchParams::Language::OrSymbol,
            length: HubspotSDK::Cms::SiteSearchSearchParams::Length::OrSymbol,
            limit: Integer,
            match_prefix: T::Boolean,
            offset: Integer,
            path_prefix: T::Array[String],
            popularity_boost: Float,
            property: T::Array[String],
            q: String,
            table_id: Integer,
            type: T::Array[String],
            types:
              T::Array[HubspotSDK::Cms::SiteSearchSearchParams::Type::OrSymbol],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Cms::PublicSearchResults)
        end
        def search(
          analytics: nil,
          autocomplete: nil,
          boost_limit: nil,
          boost_recent: nil,
          domain: nil,
          group_id: nil,
          hubdb_query: nil,
          language: nil,
          length: nil,
          # The maximum number of results to display per page.
          limit: nil,
          match_prefix: nil,
          offset: nil,
          path_prefix: nil,
          popularity_boost: nil,
          property: nil,
          q: nil,
          table_id: nil,
          type: nil,
          types: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
