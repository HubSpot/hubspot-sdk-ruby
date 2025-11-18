# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class ThreadListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::ThreadListParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The paging cursor token of the last successfully read resource will be returned
        # as the `paging.next.after` JSON property of a paged response containing more
        # results.
        sig { returns(T.nilable(String)) }
        attr_reader :after

        sig { params(after: String).void }
        attr_writer :after

        # Whether to return only results that have been archived.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        # Retrieve a filtered list of conversations for a specific contact by its ID. This
        # parameter cannot be used in conjunction with the `inboxId` property.
        sig { returns(T.nilable(Integer)) }
        attr_reader :associated_contact_id

        sig { params(associated_contact_id: Integer).void }
        attr_writer :associated_contact_id

        # You can specify an association type here of `TICKET`. If this is set the
        # response will included a thread associations object and associated ticket id if
        # present. If there are no associations to a ticket with this conversation, then
        # the thread associations object will not be present on the response.
        sig do
          returns(
            T.nilable(
              T::Array[
                HubspotSDK::Conversations::ThreadListParams::Association::OrSymbol
              ]
            )
          )
        end
        attr_reader :association

        sig do
          params(
            association:
              T::Array[
                HubspotSDK::Conversations::ThreadListParams::Association::OrSymbol
              ]
          ).void
        end
        attr_writer :association

        # The ID of the conversations inbox you can optionally include to retrieve the
        # associated messages for. This parameter cannot be used in conjunction with the
        # `associatedContactId` property.
        sig { returns(T.nilable(T::Array[Integer])) }
        attr_reader :inbox_id

        sig { params(inbox_id: T::Array[Integer]).void }
        attr_writer :inbox_id

        # The minimum(earliest) `latestMessageTimestamp`. This is required only when
        # sorting by `latestMessageTimestamp`.
        sig { returns(T.nilable(Time)) }
        attr_reader :latest_message_timestamp_after

        sig { params(latest_message_timestamp_after: Time).void }
        attr_writer :latest_message_timestamp_after

        # The maximum number of results to display per page.
        sig { returns(T.nilable(Integer)) }
        attr_reader :limit

        sig { params(limit: Integer).void }
        attr_writer :limit

        # A specific property to include in the thread response.
        sig { returns(T.nilable(String)) }
        attr_reader :property

        sig { params(property: String).void }
        attr_writer :property

        # Set the sort order of the response. Valid options are `id` (default) and
        # `latestMessageTimestamp` (which requires the `latestMessageTimestampAfter` field
        # to also be set). If you’re filtering threads by `associatedContactId` , you can
        # sort in descending order by prepending - to the sort option (e.g., `-id` or
        # `-latestMessageTimestampAfter` ). Otherwise, results are always returned in
        # ascending order.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :sort

        sig { params(sort: T::Array[String]).void }
        attr_writer :sort

        # The status of the associated conversations to filter by (either `OPEN` or
        # `CLOSED`). This property must be provided if you’re including the
        # `associatedContactId` query parameter.
        sig { returns(T.nilable(String)) }
        attr_reader :thread_status

        sig { params(thread_status: String).void }
        attr_writer :thread_status

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
          ).returns(T.attached_class)
        end
        def self.new(
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

        sig do
          override.returns(
            {
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
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end

        module Association
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Conversations::ThreadListParams::Association
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TICKET =
            T.let(
              :TICKET,
              HubspotSDK::Conversations::ThreadListParams::Association::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::ThreadListParams::Association::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
