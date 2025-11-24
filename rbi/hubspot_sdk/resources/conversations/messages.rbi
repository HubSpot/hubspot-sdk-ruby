# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class Messages
        sig do
          params(
            thread_id: Integer,
            public_message_egg: HubspotSDK::Conversations::PublicMessageEgg,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicMessage::Variants)
        end
        def create(thread_id, public_message_egg:, request_options: {})
        end

        sig do
          params(
            thread_id: Integer,
            after: String,
            archived: T::Boolean,
            limit: Integer,
            property: String,
            sort: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[
              HubspotSDK::Conversations::CollectionResponsePublicMessageForwardPaging::Result::Variants
            ]
          )
        end
        def list(
          thread_id,
          after: nil,
          archived: nil,
          limit: nil,
          property: nil,
          sort: nil,
          request_options: {}
        )
        end

        sig do
          params(
            message_id: String,
            thread_id: Integer,
            property: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicMessage::Variants)
        end
        def get(
          # Path param:
          message_id,
          # Path param:
          thread_id:,
          # Query param:
          property: nil,
          request_options: {}
        )
        end

        sig do
          params(
            message_id: String,
            thread_id: Integer,
            property: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicMessageContent)
        end
        def get_original_content(
          # Path param:
          message_id,
          # Path param:
          thread_id:,
          # Query param:
          property: nil,
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
