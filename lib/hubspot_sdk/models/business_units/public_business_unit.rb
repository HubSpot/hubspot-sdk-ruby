# frozen_string_literal: true

module HubspotSDK
  module Models
    module BusinessUnits
      class PublicBusinessUnit < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The Business Unit's unique ID
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The Business Unit's name
        #
        #   @return [String]
        required :name, String

        # @!attribute logo_metadata
        #   A Business Unit's logo metadata
        #
        #   @return [HubspotSDK::Models::BusinessUnits::PublicBusinessUnitLogoMetadata, nil]
        optional :logo_metadata,
                 -> { HubspotSDK::BusinessUnits::PublicBusinessUnitLogoMetadata },
                 api_name: :logoMetadata

        # @!method initialize(id:, name:, logo_metadata: nil)
        #   A Business Unit
        #
        #   @param id [String] The Business Unit's unique ID
        #
        #   @param name [String] The Business Unit's name
        #
        #   @param logo_metadata [HubspotSDK::Models::BusinessUnits::PublicBusinessUnitLogoMetadata] A Business Unit's logo metadata
      end
    end
  end
end
