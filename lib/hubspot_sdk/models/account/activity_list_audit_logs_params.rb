# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Account
      # @see HubSpotSDK::Resources::Account::Activity#list_audit_logs
      class ActivityListAuditLogsParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute acting_user_id
        #
        #   @return [Array<Integer>, nil]
        optional :acting_user_id, HubSpotSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute after
        #   The paging cursor token of the last successfully read resource will be returned
        #   as the `paging.next.after` JSON property of a paged response containing more
        #   results.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute fill_final_timestamp
        #
        #   @return [Boolean, nil]
        optional :fill_final_timestamp, HubSpotSDK::Internal::Type::Boolean

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute occurred_after
        #
        #   @return [Time, nil]
        optional :occurred_after, Time

        # @!attribute occurred_before
        #
        #   @return [Time, nil]
        optional :occurred_before, Time

        # @!attribute sort
        #
        #   @return [Array<String>, nil]
        optional :sort, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(acting_user_id: nil, after: nil, fill_final_timestamp: nil, limit: nil, occurred_after: nil, occurred_before: nil, sort: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Account::ActivityListAuditLogsParams} for more details.
        #
        #   @param acting_user_id [Array<Integer>]
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param fill_final_timestamp [Boolean]
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param occurred_after [Time]
        #
        #   @param occurred_before [Time]
        #
        #   @param sort [Array<String>]
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
