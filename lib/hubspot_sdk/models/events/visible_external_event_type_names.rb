# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      # @see HubSpotSDK::Resources::Events::Occurrences#list_event_types
      class VisibleExternalEventTypeNames < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute event_types
        #   List of event type names.
        #
        #   @return [Array<String>]
        required :event_types, HubSpotSDK::Internal::Type::ArrayOf[String], api_name: :eventTypes

        # @!method initialize(event_types:)
        #   @param event_types [Array<String>] List of event type names.
      end
    end
  end
end
