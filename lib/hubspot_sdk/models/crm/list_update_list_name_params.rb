# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#update_list_name
      class ListUpdateListNameParams < HubSpotSDK::Internal::Type::BaseModel
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

        # @!attribute list_name
        #
        #   @return [String, nil]
        optional :list_name, String

        # @!method initialize(list_id:, include_filters: nil, list_name: nil, request_options: {})
        #   @param list_id [String]
        #   @param include_filters [Boolean]
        #   @param list_name [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
