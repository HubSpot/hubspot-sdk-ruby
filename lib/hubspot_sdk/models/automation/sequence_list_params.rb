# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      # @see HubspotSDK::Resources::Automation::Sequences#list
      class SequenceListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute user_id
        #   The unique identifier of the user whose sequences are to be retrieved. This
        #   parameter is required.
        #
        #   @return [String]
        required :user_id, String

        # @!attribute after
        #   The paging cursor token of the last successfully read resource. Use this for
        #   pagination to retrieve the next set of results.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute name
        #   The name of the sequence to filter results by.
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(user_id:, after: nil, limit: nil, name: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::SequenceListParams} for more details.
        #
        #   @param user_id [String] The unique identifier of the user whose sequences are to be retrieved. This para
        #
        #   @param after [String] The paging cursor token of the last successfully read resource. Use this for pag
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param name [String] The name of the sequence to filter results by.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
