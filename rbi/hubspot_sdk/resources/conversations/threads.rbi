# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class Threads
        sig do
          params(
            thread_id: Integer,
            body_archived: T::Boolean,
            status:
              HubspotSDK::Conversations::PublicThreadUpdateRequest::Status::OrSymbol,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicThread)
        end
        def update(
          # Path param
          thread_id,
          # Body param
          body_archived: nil,
          # Body param
          status: nil,
          request_options: {}
        )
        end

        sig do
          params(
            after: String,
            archived: T::Boolean,
            associated_contact_id: Integer,
            association:
              T::Array[
                HubspotSDK::Conversations::ThreadListParams::Association::OrSymbol
              ],
            inbox_id: T::Array[Integer],
            latest_message_timestamp_after: Time,
            limit: Integer,
            property: String,
            sort: T::Array[String],
            thread_status: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[HubspotSDK::Conversations::PublicThread]
          )
        end
        def list(
          after: nil,
          archived: nil,
          associated_contact_id: nil,
          association: nil,
          inbox_id: nil,
          latest_message_timestamp_after: nil,
          limit: nil,
          property: nil,
          sort: nil,
          thread_status: nil,
          request_options: {}
        )
        end

        sig do
          params(
            thread_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(thread_id, request_options: {})
        end

        sig do
          params(
            thread_id: Integer,
            archived: T::Boolean,
            association:
              T::Array[
                HubspotSDK::Conversations::ThreadGetParams::Association::OrSymbol
              ],
            property: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Conversations::PublicThread)
        end
        def get(
          thread_id,
          archived: nil,
          association: nil,
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
