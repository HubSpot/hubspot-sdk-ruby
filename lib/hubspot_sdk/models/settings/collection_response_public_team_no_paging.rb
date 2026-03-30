# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      # @see HubspotSDK::Resources::Settings::Users#list_teams
      class CollectionResponsePublicTeamNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Settings::PublicTeam>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Settings::PublicTeam] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Settings::PublicTeam>]
      end
    end
  end
end
