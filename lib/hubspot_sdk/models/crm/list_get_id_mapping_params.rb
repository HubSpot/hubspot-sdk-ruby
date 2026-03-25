# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#get_id_mapping
      class ListGetIDMappingParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute legacy_list_id
        #
        #   @return [String, nil]
        optional :legacy_list_id, String

        # @!method initialize(legacy_list_id: nil, request_options: {})
        #   @param legacy_list_id [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
