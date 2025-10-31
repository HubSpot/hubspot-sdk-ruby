# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Lists#get
      class ListGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute include_filters
        #   A flag indicating whether or not the response object list definition should
        #   include a filter branch definition. By default, object list definitions will not
        #   have their filter branch definitions included in the response.
        #
        #   @return [Boolean, nil]
        optional :include_filters, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(include_filters: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::CRM::ListGetParams} for more details.
        #
        #   @param include_filters [Boolean] A flag indicating whether or not the response object list definition should incl
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
