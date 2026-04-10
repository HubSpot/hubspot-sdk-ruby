# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicMembershipSettings < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute include_unassigned
        #   Indicates whether unassigned memberships should be included.
        #
        #   @return [Boolean, nil]
        optional :include_unassigned, HubSpotSDK::Internal::Type::Boolean, api_name: :includeUnassigned

        # @!attribute membership_team_id
        #   The ID of the team associated with the membership.
        #
        #   @return [Integer, nil]
        optional :membership_team_id, Integer, api_name: :membershipTeamId

        # @!method initialize(include_unassigned: nil, membership_team_id: nil)
        #   @param include_unassigned [Boolean] Indicates whether unassigned memberships should be included.
        #
        #   @param membership_team_id [Integer] The ID of the team associated with the membership.
      end
    end
  end
end
