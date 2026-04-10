# frozen_string_literal: true

module HubSpotSDK
  module Models
    module BusinessUnits
      class PublicBusinessUnit < HubSpotSDK::Internal::Type::BaseModel
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
        #
        #   @return [HubSpotSDK::Models::BusinessUnits::PublicBusinessUnitLogoMetadata, nil]
        optional :logo_metadata,
                 -> { HubSpotSDK::BusinessUnits::PublicBusinessUnitLogoMetadata },
                 api_name: :logoMetadata

        # @!method initialize(id:, name:, logo_metadata: nil)
        #   @param id [String] The Business Unit's unique ID
        #
        #   @param name [String] The Business Unit's name
        #
        #   @param logo_metadata [HubSpotSDK::Models::BusinessUnits::PublicBusinessUnitLogoMetadata]
      end
    end
  end
end
