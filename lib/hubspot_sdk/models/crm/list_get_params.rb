# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#get
      class ListGetParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute list_id
        #
        #   @return [String]
        required :list_id, String

        # @!attribute include_filters
        #
        #   @return [Boolean, nil]
        optional :include_filters, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(list_id:, include_filters: nil, request_options: {})
        #   @param list_id [String]
        #   @param include_filters [Boolean]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
