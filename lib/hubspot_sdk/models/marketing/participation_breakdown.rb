# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class ParticipationBreakdown < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The internal ID of the target marketing event
        #
        #   @return [String]
        required :id, String

        # @!attribute associations
        #
        #   @return [HubSpotSDK::Models::Marketing::ParticipationAssociations]
        required :associations, -> { HubSpotSDK::Marketing::ParticipationAssociations }

        # @!attribute created_at
        #   The creation time and date of the target marketing event
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute properties
        #
        #   @return [HubSpotSDK::Models::Marketing::ParticipationProperties]
        required :properties, -> { HubSpotSDK::Marketing::ParticipationProperties }

        # @!method initialize(id:, associations:, created_at:, properties:)
        #   @param id [String] The internal ID of the target marketing event
        #
        #   @param associations [HubSpotSDK::Models::Marketing::ParticipationAssociations]
        #
        #   @param created_at [Time] The creation time and date of the target marketing event
        #
        #   @param properties [HubSpotSDK::Models::Marketing::ParticipationProperties]
      end
    end
  end
end
