# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class ChannelAccounts
        sig do
          params(
            after: String,
            archived: T::Boolean,
            channel_id: T::Array[Integer],
            default_page_length: Integer,
            inbox_id: T::Array[Integer],
            limit: Integer,
            sort: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[
              HubspotSDK::Conversations::PublicChannelAccount
            ]
          )
        end
        def list(
          after: nil,
          archived: nil,
          channel_id: nil,
          default_page_length: nil,
          inbox_id: nil,
          limit: nil,
          sort: nil,
          request_options: {}
        )
        end

        sig do
          params(
            channel_account_id: Integer,
            archived: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicChannelAccount)
        end
        def get(channel_account_id, archived: nil, request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
