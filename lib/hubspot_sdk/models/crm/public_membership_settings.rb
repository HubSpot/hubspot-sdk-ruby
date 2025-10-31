# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class PublicMembershipSettings < HubspotSDK::Internal::Type::BaseModel
        # @!attribute include_unassigned
        #
        #   @return [Boolean, nil]
        optional :include_unassigned, HubspotSDK::Internal::Type::Boolean, api_name: :includeUnassigned

        # @!attribute membership_team_id
        #
        #   @return [Integer, nil]
        optional :membership_team_id, Integer, api_name: :membershipTeamId

        # @!method initialize(include_unassigned: nil, membership_team_id: nil)
        #   @param include_unassigned [Boolean]
        #   @param membership_team_id [Integer]
      end
    end
  end
end
