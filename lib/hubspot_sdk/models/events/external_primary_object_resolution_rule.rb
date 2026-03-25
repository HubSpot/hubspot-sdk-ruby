# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class ExternalPrimaryObjectResolutionRule < HubspotSDK::Internal::Type::BaseModel
        # @!attribute event_property_name
        #
        #   @return [String]
        required :event_property_name, String, api_name: :eventPropertyName

        # @!attribute target_object_property_name
        #
        #   @return [String]
        required :target_object_property_name, String, api_name: :targetObjectPropertyName

        # @!method initialize(event_property_name:, target_object_property_name:)
        #   @param event_property_name [String]
        #   @param target_object_property_name [String]
      end
    end
  end
end
