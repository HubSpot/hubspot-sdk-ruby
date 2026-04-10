# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class EventIDView < HubSpotSDK::Internal::Type::BaseModel
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
        #   @param id [String] Identifier of event.
        #
        #   @param created [Time] Time of event creation.
      end
    end
  end
end
