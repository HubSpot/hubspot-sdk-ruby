# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class ParticipationBreakdown < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute associations
        #
        #   @return [HubspotSDK::Models::Marketing::ParticipationAssociations]
        required :associations, -> { HubspotSDK::Marketing::ParticipationAssociations }

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute properties
        #
        #   @return [HubspotSDK::Models::Marketing::ParticipationProperties]
        required :properties, -> { HubspotSDK::Marketing::ParticipationProperties }

        # @!method initialize(id:, associations:, created_at:, properties:)
        #   @param id [String]
        #   @param associations [HubspotSDK::Models::Marketing::ParticipationAssociations]
        #   @param created_at [Time]
        #   @param properties [HubspotSDK::Models::Marketing::ParticipationProperties]
      end
    end
  end
end
