# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class SimplePublicObjectInputForCreate < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute associations
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicAssociationsForObject>]
        required :associations,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicAssociationsForObject] }

        # @!attribute properties
        #   Key-value pairs for setting properties for the new object.
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubSpotSDK::Internal::Type::HashOf[String]

        # @!method initialize(associations:, properties:)
        #   Is the input object used to create a new CRM object, containing the properties
        #   to be set and optional associations to link the new record with other CRM
        #   objects.
        #
        #   @param associations [Array<HubSpotSDK::Models::Crm::PublicAssociationsForObject>]
        #
        #   @param properties [Hash{Symbol=>String}] Key-value pairs for setting properties for the new object.
      end
    end
  end
end
