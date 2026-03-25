# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::PropertiesValidations#get_by_object_type_id_and_property_name
      class PropertiesValidationGetByObjectTypeIDAndPropertyNameParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

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
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
