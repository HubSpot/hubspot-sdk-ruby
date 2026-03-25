# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Imports#list_errors
      class ImportListErrorsParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute import_id
        #
        #   @return [Integer]
        required :import_id, Integer

        # @!attribute after
        #   The paging cursor token of the last successfully read resource will be returned
        #   as the `paging.next.after` JSON property of a paged response containing more
        #   results.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute include_error_message
        #
        #   @return [Boolean, nil]
        optional :include_error_message, HubspotSDK::Internal::Type::Boolean

        # @!attribute include_row_data
        #
        #   @return [Boolean, nil]
        optional :include_row_data, HubspotSDK::Internal::Type::Boolean

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!method initialize(import_id:, after: nil, include_error_message: nil, include_row_data: nil, limit: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::ImportListErrorsParams} for more details.
        #
        #   @param import_id [Integer]
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param include_error_message [Boolean]
        #
        #   @param include_row_data [Boolean]
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
