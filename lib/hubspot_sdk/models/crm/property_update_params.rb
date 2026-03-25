# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Properties#update
      class PropertyUpdateParams < HubspotSDK::Models::Crm::PropertyUpdate
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute object_type
        #
        #   @return [String]
        required :object_type, String

        # @!attribute property_name
        #
        #   @return [String]
        required :property_name, String

        # @!method initialize(object_type:, property_name:, request_options: {})
        #   @param object_type [String]
        #   @param property_name [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
