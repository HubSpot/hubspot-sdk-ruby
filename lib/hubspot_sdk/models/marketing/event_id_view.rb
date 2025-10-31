# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class EventIDView < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Identifier of event.
        #
        #   @return [String]
        required :id, String

        # @!attribute created
        #   Time of event creation.
        #
        #   @return [Time]
        required :created, Time

        # @!method initialize(id:, created:)
        #   The ID of a send event.
        #
        #   @param id [String] Identifier of event.
        #
        #   @param created [Time] Time of event creation.
      end
    end
  end
end
