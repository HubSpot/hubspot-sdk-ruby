# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class Inboxes
        sig do
          params(
            after: String,
            archived: T::Boolean,
            default_page_length: Integer,
            limit: Integer,
            sort: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[HubspotSDK::Conversations::PublicInbox]
          )
        end
        def list(
          after: nil,
          archived: nil,
          default_page_length: nil,
          limit: nil,
          sort: nil,
          request_options: {}
        )
        end

        sig do
          params(
            inbox_id: Integer,
            archived: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicInbox)
        end
        def get(inbox_id, archived: nil, request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
