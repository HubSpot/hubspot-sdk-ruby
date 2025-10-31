# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class SiteSearch
        # For a given account and document ID (page ID, blog post ID, HubDB row ID, etc.),
        # return all indexed data for that document. This is useful when debugging why a
        # particular document is not returned from a custom search.
        sig do
          params(
            content_id: String,
            type:
              HubspotSDK::Cms::SiteSearchGetIndexedDataParams::Type::OrSymbol,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Models::Cms::SiteSearchGetIndexedDataResponse)
        end
        def get_indexed_data(
          # ID of the target document when searching for indexed properties.
          content_id,
          # The type of document. Can be one of `SITE_PAGE`, `BLOG_POST`, or
          # `KNOWLEDGE_ARTICLE`.
          type: nil,
          request_options: {}
        )
        end

        # Returns any website content matching the given search criteria for a given
        # HubSpot account. Searches can be filtered by content type, domain, or URL path.
        sig do
          params(
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
            type:
              T::Array[HubspotSDK::Cms::SiteSearchSearchParams::Type::OrSymbol],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Models::Cms::SiteSearchSearchResponse)
        end
        def search(
          # Specifies whether or not you are showing autocomplete results. Defaults to
          # false.
          autocomplete: nil,
          # Specifies the maximum amount a result will be boosted based on its view count.
          # Defaults to 5.0. Read more about elasticsearch boosting
          # [here](https://www.elastic.co/guide/en/elasticsearch/reference/current/mapping-boost.html).
          boost_limit: nil,
          # Specifies a relative time window where scores of documents published outside
          # this time window decay. This can only be used for blog posts. For example,
          # boostRecent=10d will boost documents published within the last 10 days.
          # Supported timeunits are ms (milliseconds), s (seconds), m (minutes), h (hours),
          # d (days).
          boost_recent: nil,
          # A domain to match search results for. Multiple domains can be provided with &.
          domain: nil,
          # Specifies which blog(s) to be searched by blog ID. Can be used multiple times to
          # search more than one blog.
          group_id: nil,
          # Specify a HubDB query to further filter the search results.
          hubdb_query: nil,
          # Specifies the language of content to be searched. This value must be a valid
          # [ISO 639-1 language code](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes)
          # (e.g. `es` for Spanish)
          language: nil,
          # Specifies the length of the search results. Can be set to `LONG` or `SHORT`.
          # `SHORT` will return the first 128 characters of the content's meta description.
          # `LONG` will build a more detailed content snippet based on the html/content of
          # the page.
          length: nil,
          # Specifies the number of results to be returned in a single response. Defaults to
          # `10`. Maximum value is `100`.
          limit: nil,
          # Inverts the behavior of the pathPrefix filter when set to `false`. Defaults to
          # `true`.
          match_prefix: nil,
          # Used to page through the results. If there are more results than specified by
          # the `limit` parameter, you will need to use the value of offset returned in the
          # previous request to get the next set of results.
          offset: nil,
          # Specifies a path prefix to filter search results. Will only return results with
          # URL paths that start with the specified parameter. Can be used multiple times.
          path_prefix: nil,
          # Specifies how strongly a result is boosted based on its view count. Defaults to
          # 1.0.
          popularity_boost: nil,
          # Specifies which properties to include in the search. Options include `title`,
          # `description`, and `html`. All properties will be searched by default.
          property: nil,
          # The term to search for.
          q: nil,
          # Specifies a specific HubDB table to search. Only returns results from the
          # specified table. Can be used in tandem with the `hubdbQuery` parameter to
          # further filter results.
          table_id: nil,
          # Specifies the type of content to search. Can be one or more of SITE_PAGE,
          # LANDING_PAGE, BLOG_POST, LISTING_PAGE, and KNOWLEDGE_ARTICLE. Defaults to all
          # content types except LANDING_PAGE and KNOWLEDGE_ARTICLE
          type: nil,
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
