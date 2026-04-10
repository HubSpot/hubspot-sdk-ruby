# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      # @see HubSpotSDK::Resources::Settings::Users#list_roles
      class CollectionResponsePublicPermissionSetNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Settings::PublicPermissionSet>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Settings::PublicPermissionSet] }

        # @!method initialize(results:)
        #   @param results [Array<HubSpotSDK::Models::Settings::PublicPermissionSet>]
      end
    end
  end
end
