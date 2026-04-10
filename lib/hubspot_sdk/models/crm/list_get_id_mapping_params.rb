# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#get_id_mapping
      class ListGetIDMappingParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute legacy_list_id
        #
        #   @return [String, nil]
        optional :legacy_list_id, String

        # @!method initialize(legacy_list_id: nil, request_options: {})
        #   @param legacy_list_id [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
