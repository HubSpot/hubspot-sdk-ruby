# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicListPermissions < HubspotSDK::Internal::Type::BaseModel
        # @!attribute teams_with_edit_access
        #
        #   @return [Array<Integer>]
        required :teams_with_edit_access,
                 HubspotSDK::Internal::Type::ArrayOf[Integer],
                 api_name: :teamsWithEditAccess

        # @!attribute users_with_edit_access
        #
        #   @return [Array<Integer>]
        required :users_with_edit_access,
                 HubspotSDK::Internal::Type::ArrayOf[Integer],
                 api_name: :usersWithEditAccess

        # @!method initialize(teams_with_edit_access:, users_with_edit_access:)
        #   @param teams_with_edit_access [Array<Integer>]
        #   @param users_with_edit_access [Array<Integer>]
      end
    end
  end
end
