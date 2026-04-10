# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Account
      # @see HubSpotSDK::Resources::Account::Activity#list_security_activities
      class ActivityListSecurityActivitiesParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   The paging cursor token of the last successfully read resource will be returned
        #   as the `paging.next.after` JSON property of a paged response containing more
        #   results.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute from_timestamp
        #
        #   @return [Integer, nil]
        optional :from_timestamp, Integer

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute to_timestamp
        #
        #   @return [Integer, nil]
        optional :to_timestamp, Integer

        # @!attribute user_id
        #
        #   @return [Integer, nil]
        optional :user_id, Integer

        # @!method initialize(after: nil, from_timestamp: nil, limit: nil, to_timestamp: nil, user_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Account::ActivityListSecurityActivitiesParams} for more
        #   details.
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param from_timestamp [Integer]
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param to_timestamp [Integer]
        #
        #   @param user_id [Integer]
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
