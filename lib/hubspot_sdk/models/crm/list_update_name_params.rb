# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#update_name
      class ListUpdateNameParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute include_filters
        #   A flag indicating whether or not the response object list definition should
        #   include a filter branch definition. By default, object list definitions will not
        #   have their filter branch definitions included in the response.
        #
        #   @return [Boolean, nil]
        optional :include_filters, HubspotSDK::Internal::Type::Boolean

        # @!attribute list_name
        #   The name to update the list to.
        #
        #   @return [String, nil]
        optional :list_name, String

        # @!method initialize(include_filters: nil, list_name: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::ListUpdateNameParams} for more details.
        #
        #   @param include_filters [Boolean] A flag indicating whether or not the response object list definition should incl
        #
        #   @param list_name [String] The name to update the list to.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
