# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#get
      class ListGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute list_id
        #
        #   @return [String]
        required :list_id, String

        # @!attribute include_filters
        #
        #   @return [Boolean, nil]
        optional :include_filters, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(list_id:, include_filters: nil, request_options: {})
        #   @param list_id [String]
        #   @param include_filters [Boolean]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
