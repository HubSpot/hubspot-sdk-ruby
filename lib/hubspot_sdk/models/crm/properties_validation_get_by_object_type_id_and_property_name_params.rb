# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::PropertiesValidations#get_by_object_type_id_and_property_name
      class PropertiesValidationGetByObjectTypeIDAndPropertyNameParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String

        # @!attribute property_name
        #
        #   @return [String]
        required :property_name, String

        # @!method initialize(object_type_id:, property_name:, request_options: {})
        #   @param object_type_id [String]
        #   @param property_name [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
