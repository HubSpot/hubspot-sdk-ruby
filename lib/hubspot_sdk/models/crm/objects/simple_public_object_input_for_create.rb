# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Objects
        class SimplePublicObjectInputForCreate < HubspotSDK::Internal::Type::BaseModel
          # @!attribute associations
          #
          #   @return [Array<HubspotSDK::Models::CRM::PublicAssociationsForObject>]
          required :associations,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::PublicAssociationsForObject] }

          # @!attribute properties
          #   Key-value pairs for setting properties for the new object.
          #
          #   @return [Hash{Symbol=>String}]
          required :properties, HubspotSDK::Internal::Type::HashOf[String]

          # @!method initialize(associations:, properties:)
          #   Is the input object used to create a new CRM object, containing the properties
          #   to be set and optional associations to link the new record with other CRM
          #   objects.
          #
          #   @param associations [Array<HubspotSDK::Models::CRM::PublicAssociationsForObject>]
          #
          #   @param properties [Hash{Symbol=>String}] Key-value pairs for setting properties for the new object.
        end
      end
    end
  end
end
