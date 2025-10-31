# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Lists
        # @see HubspotSDK::Resources::CRM::Lists::Mapping#get_id_mapping
        class MappingGetIDMappingParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute legacy_list_id
          #   The legacy list id from lists v1 API.
          #
          #   @return [String, nil]
          optional :legacy_list_id, String

          # @!method initialize(legacy_list_id: nil, request_options: {})
          #   @param legacy_list_id [String] The legacy list id from lists v1 API.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
