# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Lists#list
      class ListListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute include_filters
        #   A flag indicating whether or not the response object list definitions should
        #   include a filter branch definition. By default, object list definitions will not
        #   have their filter branch definitions included in the response.
        #
        #   @return [Boolean, nil]
        optional :include_filters, HubspotSDK::Internal::Type::Boolean

        # @!attribute list_ids
        #   The **ILS IDs** of the lists to fetch.
        #
        #   @return [Array<String>, nil]
        optional :list_ids, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(include_filters: nil, list_ids: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::CRM::ListListParams} for more details.
        #
        #   @param include_filters [Boolean] A flag indicating whether or not the response object list definitions should inc
        #
        #   @param list_ids [Array<String>] The **ILS IDs** of the lists to fetch.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
