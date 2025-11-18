# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      # @see HubspotSDK::Resources::Conversations::Threads#list
      class ThreadListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   The paging cursor token of the last successfully read resource will be returned
        #   as the `paging.next.after` JSON property of a paged response containing more
        #   results.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute archived
        #   Whether to return only results that have been archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute associated_contact_id
        #   Retrieve a filtered list of conversations for a specific contact by its ID. This
        #   parameter cannot be used in conjunction with the `inboxId` property.
        #
        #   @return [Integer, nil]
        optional :associated_contact_id, Integer

        # @!attribute association
        #   You can specify an association type here of `TICKET`. If this is set the
        #   response will included a thread associations object and associated ticket id if
        #   present. If there are no associations to a ticket with this conversation, then
        #   the thread associations object will not be present on the response.
        #
        #   @return [Array<Symbol, HubspotSDK::Models::Conversations::ThreadListParams::Association>, nil]
        optional :association,
                 -> { HubspotSDK::Internal::Type::ArrayOf[enum: HubspotSDK::Conversations::ThreadListParams::Association] }

        # @!attribute inbox_id
        #   The ID of the conversations inbox you can optionally include to retrieve the
        #   associated messages for. This parameter cannot be used in conjunction with the
        #   `associatedContactId` property.
        #
        #   @return [Array<Integer>, nil]
        optional :inbox_id, HubspotSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute latest_message_timestamp_after
        #   The minimum(earliest) `latestMessageTimestamp`. This is required only when
        #   sorting by `latestMessageTimestamp`.
        #
        #   @return [Time, nil]
        optional :latest_message_timestamp_after, Time

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute property
        #   A specific property to include in the thread response.
        #
        #   @return [String, nil]
        optional :property, String

        # @!attribute sort
        #   Set the sort order of the response. Valid options are `id` (default) and
        #   `latestMessageTimestamp` (which requires the `latestMessageTimestampAfter` field
        #   to also be set). If you’re filtering threads by `associatedContactId` , you can
        #   sort in descending order by prepending - to the sort option (e.g., `-id` or
        #   `-latestMessageTimestampAfter` ). Otherwise, results are always returned in
        #   ascending order.
        #
        #   @return [Array<String>, nil]
        optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute thread_status
        #   The status of the associated conversations to filter by (either `OPEN` or
        #   `CLOSED`). This property must be provided if you’re including the
        #   `associatedContactId` query parameter.
        #
        #   @return [String, nil]
        optional :thread_status, String

        # @!method initialize(after: nil, archived: nil, associated_contact_id: nil, association: nil, inbox_id: nil, latest_message_timestamp_after: nil, limit: nil, property: nil, sort: nil, thread_status: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Conversations::ThreadListParams} for more details.
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param associated_contact_id [Integer] Retrieve a filtered list of conversations for a specific contact by its ID. This
        #
        #   @param association [Array<Symbol, HubspotSDK::Models::Conversations::ThreadListParams::Association>] You can specify an association type here of `TICKET`. If this is set the respons
        #
        #   @param inbox_id [Array<Integer>] The ID of the conversations inbox you can optionally include to retrieve the ass
        #
        #   @param latest_message_timestamp_after [Time] The minimum(earliest) `latestMessageTimestamp`. This is required only when sorti
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param property [String] A specific property to include in the thread response.
        #
        #   @param sort [Array<String>] Set the sort order of the response. Valid options are `id` (default) and `latest
        #
        #   @param thread_status [String] The status of the associated conversations to filter by (either `OPEN` or `CLOSE
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

        module Association
          extend HubspotSDK::Internal::Type::Enum

          TICKET = :TICKET

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
