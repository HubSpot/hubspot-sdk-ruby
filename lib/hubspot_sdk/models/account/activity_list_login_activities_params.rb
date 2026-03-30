# frozen_string_literal: true

module HubspotSDK
  module Models
    module Account
      # @see HubspotSDK::Resources::Account::Activity#list_login_activities
      class ActivityListLoginActivitiesParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   The cursor token value to get the next set of results. You can get this from the
        #   `paging.next.after` JSON property of a paged response containing more results.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute limit
        #   The maximum number of results to display per page. Max value of limit is 200.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute user_id
        #   Identifier of user to retrieve activities for
        #
        #   @return [Integer, nil]
        optional :user_id, Integer

        # @!method initialize(after: nil, limit: nil, user_id: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Account::ActivityListLoginActivitiesParams} for more
        #   details.
        #
        #   @param after [String] The cursor token value to get the next set of results. You can get this from the
        #
        #   @param limit [Integer] The maximum number of results to display per page. Max value of limit is 200.
        #
        #   @param user_id [Integer] Identifier of user to retrieve activities for
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
