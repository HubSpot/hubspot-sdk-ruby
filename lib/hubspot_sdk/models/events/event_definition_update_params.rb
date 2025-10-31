# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      # @see HubspotSDK::Resources::Events::EventDefinitions#update
      class EventDefinitionUpdateParams < HubspotSDK::Models::Events::ExternalBehavioralEventTypeDefinitionPatch
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
