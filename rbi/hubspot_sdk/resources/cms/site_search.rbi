# typed: strong

module HubSpotSDK
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
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Cms::IndexedData)
        end
        def get_indexed_data(content_id, type: nil, request_options: {})
        end

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
