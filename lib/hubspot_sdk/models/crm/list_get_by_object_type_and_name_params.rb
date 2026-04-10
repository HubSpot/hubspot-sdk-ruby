# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#get_by_object_type_and_name
      class ListGetByObjectTypeAndNameParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String

        # @!attribute list_name
        #
        #   @return [String]
        required :list_name, String

        # @!attribute include_filters
        #
        #   @return [Boolean, nil]
        optional :include_filters, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(object_type_id:, list_name:, include_filters: nil, request_options: {})
        #   @param object_type_id [String]
        #   @param list_name [String]
        #   @param include_filters [Boolean]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
