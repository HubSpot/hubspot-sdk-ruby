# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#list
      class ListListParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute include_filters
        #
        #   @return [Boolean, nil]
        optional :include_filters, HubSpotSDK::Internal::Type::Boolean

        # @!attribute list_ids
        #
        #   @return [Array<String>, nil]
        optional :list_ids, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(include_filters: nil, list_ids: nil, request_options: {})
        #   @param include_filters [Boolean]
        #   @param list_ids [Array<String>]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
