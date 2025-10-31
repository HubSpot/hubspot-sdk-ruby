# frozen_string_literal: true

module HubspotSDK
  module Models
    module Account
      # @see HubspotSDK::Resources::Account::Activity#list_audit_logs
      class ActivityListAuditLogsParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute acting_user_id
        #   The ID of a user, for retrieving user-specific logs.
        #
        #   @return [Array<Integer>, nil]
        optional :acting_user_id, HubspotSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute after
        #   The paging cursor token of the last successfully read resource will be returned
        #   as the `paging.next.after` JSON property of a paged response containing more
        #   results.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute occurred_after
        #   A timestamp, as a starting point for retrieving activity logs.
        #
        #   @return [Time, nil]
        optional :occurred_after, Time

        # @!attribute occurred_before
        #   A timestamp, as an end point for retrieving activity logs.
        #
        #   @return [Time, nil]
        optional :occurred_before, Time

        # @!attribute sort
        #   Set to `occurredAt` to order results by the time of the event. By default,
        #   events are ordered from oldest to newest.
        #
        #   @return [Array<String>, nil]
        optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(acting_user_id: nil, after: nil, limit: nil, occurred_after: nil, occurred_before: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Account::ActivityListAuditLogsParams} for more details.
        #
        #   @param acting_user_id [Array<Integer>] The ID of a user, for retrieving user-specific logs.
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param occurred_after [Time] A timestamp, as a starting point for retrieving activity logs.
        #
        #   @param occurred_before [Time] A timestamp, as an end point for retrieving activity logs.
        #
        #   @param sort [Array<String>] Set to `occurredAt` to order results by the time of the event. By default, event
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
