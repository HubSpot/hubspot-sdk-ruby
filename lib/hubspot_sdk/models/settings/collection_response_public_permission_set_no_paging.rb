# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      # @see HubspotSDK::Resources::Settings::Users#list_roles
      class CollectionResponsePublicPermissionSetNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Settings::PublicPermissionSet>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Settings::PublicPermissionSet] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Settings::PublicPermissionSet>]
      end
    end
  end
end
