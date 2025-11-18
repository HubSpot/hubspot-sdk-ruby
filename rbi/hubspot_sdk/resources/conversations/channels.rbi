# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class Channels
        # Retrieve a list of channels, with optional filters and sorting.
        sig do
          params(
            after: String,
            default_page_length: Integer,
            limit: Integer,
            sort: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[HubspotSDK::Conversations::PublicChannel]
          )
        end
        def list(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # The default number of results to display per page.
          default_page_length: nil,
          # The maximum number of results to display per page.
          limit: nil,
          # Specify the sort order for the channels.
          sort: nil,
          request_options: {}
        )
        end

        # Retrieve details of a single channel using the channel ID.
        sig do
          params(
            channel_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicChannel)
        end
        def get(
          # The unique ID of the channel.
          channel_id,
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
