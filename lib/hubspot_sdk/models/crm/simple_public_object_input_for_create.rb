# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class SimplePublicObjectInputForCreate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute properties
        #   Key-value pairs for setting properties for the new object.
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute associations
        #
        #   @return [Array<HubspotSDK::Models::CRM::PublicAssociationsForObject>, nil]
        optional :associations,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicAssociationsForObject] }

        # @!method initialize(properties:, associations: nil)
        #   Is the input object used to create a new CRM object, containing the properties
        #   to be set and optional associations to link the new record with other CRM
        #   objects.
        #
        #   @param properties [Hash{Symbol=>String}] Key-value pairs for setting properties for the new object.
        #
        #   @param associations [Array<HubspotSDK::Models::CRM::PublicAssociationsForObject>]
      end
    end
  end
end
