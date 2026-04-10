# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      # @see HubSpotSDK::Resources::Events::Definitions#update_property
      class DefinitionUpdatePropertyParams < HubSpotSDK::Models::Events::ExternalBehavioralEventPropertyDefinitionPatch
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute event_name
        #
        #   @return [String]
        required :event_name, String

        # @!attribute property_name
        #
        #   @return [String]
        required :property_name, String

        # @!method initialize(event_name:, property_name:, request_options: {})
        #   @param event_name [String]
        #   @param property_name [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
