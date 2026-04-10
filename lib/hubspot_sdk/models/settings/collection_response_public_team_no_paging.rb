# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      # @see HubSpotSDK::Resources::Settings::Users#list_teams
      class CollectionResponsePublicTeamNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Settings::PublicTeam>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Settings::PublicTeam] }

        # @!method initialize(results:)
        #   @param results [Array<HubSpotSDK::Models::Settings::PublicTeam>]
      end
    end
  end
end
