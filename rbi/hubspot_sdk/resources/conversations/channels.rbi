# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class Channels
        # Retrieve a list of channels, with optional filters and sorting.
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Conversations::CollectionResponseWithTotalPublicChannelForwardPaging
          )
        end
        def list(request_options: {})
        end

        # Retrieve details of a single channel using the channel ID.
        sig do
          params(
            channel_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicChannel)
        end
        def get(channel_id, request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
