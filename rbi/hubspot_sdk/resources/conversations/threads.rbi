# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class Threads
        # Updates a single thread. Either a thread's status can be updated, or the thread
        # can be restored.
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
          # Path param: The unique ID of the thread.
          thread_id,
          # Body param: Whether this thread is archived. Set to false to restore the thread.
          body_archived: nil,
          # Body param: The thread's status: `OPEN` or `CLOSED`.
          status: nil,
          request_options: {}
        )
        end

        # Retrieve a list of threads, with optional filters and sorting.
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
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # Whether to return only results that have been archived.
          archived: nil,
          # Retrieve a filtered list of conversations for a specific contact by its ID. This
          # parameter cannot be used in conjunction with the `inboxId` property.
          associated_contact_id: nil,
          # You can specify an association type here of `TICKET`. If this is set the
          # response will included a thread associations object and associated ticket id if
          # present. If there are no associations to a ticket with this conversation, then
          # the thread associations object will not be present on the response.
          association: nil,
          # The ID of the conversations inbox you can optionally include to retrieve the
          # associated messages for. This parameter cannot be used in conjunction with the
          # `associatedContactId` property.
          inbox_id: nil,
          # The minimum(earliest) `latestMessageTimestamp`. This is required only when
          # sorting by `latestMessageTimestamp`.
          latest_message_timestamp_after: nil,
          # The maximum number of results to display per page.
          limit: nil,
          # A specific property to include in the thread response.
          property: nil,
          # Set the sort order of the response. Valid options are `id` (default) and
          # `latestMessageTimestamp` (which requires the `latestMessageTimestampAfter` field
          # to also be set). If you’re filtering threads by `associatedContactId` , you can
          # sort in descending order by prepending - to the sort option (e.g., `-id` or
          # `-latestMessageTimestampAfter` ). Otherwise, results are always returned in
          # ascending order.
          sort: nil,
          # The status of the associated conversations to filter by (either `OPEN` or
          # `CLOSED`). This property must be provided if you’re including the
          # `associatedContactId` query parameter.
          thread_status: nil,
          request_options: {}
        )
        end

        # Archives a single thread. The thread will be permanently deleted 30 days after
        # placed in an archived state.
        sig do
          params(
            thread_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The unique ID of the thread.
          thread_id,
          request_options: {}
        )
        end

        # Retrieve a single thread by its ID
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
          # The unique ID of the thread.
          thread_id,
          # Whether to return only results that have been archived. Default is false.
          archived: nil,
          # You can specify an association type here of `TICKET`. If this is set the
          # response will included a thread associations object and associated ticket id if
          # present. If there are no associations to a ticket with this conversation, then
          # the thread associations object will not be present on the response.
          association: nil,
          # A specific property to include in the thread response.
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
