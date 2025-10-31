# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Imports#list_errors
      class ImportListErrorsParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   The paging cursor token of the last successfully read resource will be returned
        #   as the `paging.next.after` JSON property of a paged response containing more
        #   results.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute include_error_message
        #   Set to True to receive a message explaining the error.
        #
        #   @return [Boolean, nil]
        optional :include_error_message, HubspotSDK::Internal::Type::Boolean

        # @!attribute include_row_data
        #   Set to True to receive the data values for the errored row.
        #
        #   @return [Boolean, nil]
        optional :include_row_data, HubspotSDK::Internal::Type::Boolean

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!method initialize(after: nil, include_error_message: nil, include_row_data: nil, limit: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::CRM::ImportListErrorsParams} for more details.
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param include_error_message [Boolean] Set to True to receive a message explaining the error.
        #
        #   @param include_row_data [Boolean] Set to True to receive the data values for the errored row.
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
