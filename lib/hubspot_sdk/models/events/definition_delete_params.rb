# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      # @see HubspotSDK::Resources::Events::Definitions#delete
      class DefinitionDeleteParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute event_name
        #
        #   @return [String]
        required :event_name, String

        # @!method initialize(event_name:, request_options: {})
        #   @param event_name [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
