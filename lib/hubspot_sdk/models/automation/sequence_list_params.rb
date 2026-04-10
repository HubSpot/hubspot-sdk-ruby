# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      # @see HubSpotSDK::Resources::Automation::Sequences#list
      class SequenceListParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String

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

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(user_id:, after: nil, limit: nil, name: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Automation::SequenceListParams} for more details.
        #
        #   @param user_id [String]
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param name [String]
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
