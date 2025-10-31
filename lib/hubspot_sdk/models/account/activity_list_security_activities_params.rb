# frozen_string_literal: true

module HubspotSDK
  module Models
    module Account
      # @see HubspotSDK::Resources::Account::Activity#list_security_activities
      class ActivityListSecurityActivitiesParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   The cursor token value to get the next set of results. You can get this from the
        #   `paging.next.after` JSON property of a paged response containing more results.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute from_timestamp
        #   The start time, for retrieving logs within a specific timeframe.
        #
        #   @return [Integer, nil]
        optional :from_timestamp, Integer

        # @!attribute limit
        #   The maximum number of results to display per page. Max value of limit is 200.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute to_timestamp
        #   The end time, for retrieving logs within a specific timeframe.
        #
        #   @return [Integer, nil]
        optional :to_timestamp, Integer

        # @!attribute user_id
        #   The ID of a user, for retrieving user-specific logs.
        #
        #   @return [Integer, nil]
        optional :user_id, Integer

        # @!method initialize(after: nil, from_timestamp: nil, limit: nil, to_timestamp: nil, user_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Account::ActivityListSecurityActivitiesParams} for more
        #   details.
        #
        #   @param after [String] The cursor token value to get the next set of results. You can get this from the
        #
        #   @param from_timestamp [Integer] The start time, for retrieving logs within a specific timeframe.
        #
        #   @param limit [Integer] The maximum number of results to display per page. Max value of limit is 200.
        #
        #   @param to_timestamp [Integer] The end time, for retrieving logs within a specific timeframe.
        #
        #   @param user_id [Integer] The ID of a user, for retrieving user-specific logs.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
