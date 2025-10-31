# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      # @see HubspotSDK::Resources::Events#list_event_types
      class VisibleExternalEventTypeNames < HubspotSDK::Internal::Type::BaseModel
        # @!attribute event_types
        #   List of event type names.
        #
        #   @return [Array<String>]
        required :event_types, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :eventTypes

        # @!method initialize(event_types:)
        #   @param event_types [Array<String>] List of event type names.
      end
    end
  end
end
