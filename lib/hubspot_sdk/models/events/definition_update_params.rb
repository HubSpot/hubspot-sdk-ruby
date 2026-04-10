# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      # @see HubSpotSDK::Resources::Events::Definitions#update
      class DefinitionUpdateParams < HubSpotSDK::Models::Events::ExternalBehavioralEventTypeDefinitionPatch
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute event_name
        #
        #   @return [String]
        required :event_name, String

        # @!method initialize(event_name:, request_options: {})
        #   @param event_name [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
