# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class Channels
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
          after: nil,
          default_page_length: nil,
          limit: nil,
          sort: nil,
          request_options: {}
        )
        end

        sig do
          params(
            channel_id: Integer,
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
