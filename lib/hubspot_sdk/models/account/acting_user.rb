# frozen_string_literal: true

module HubspotSDK
  module Models
    module Account
      class ActingUser < HubspotSDK::Internal::Type::BaseModel
        # @!attribute user_id
        #   The ID of the user who performed the action.
        #
        #   @return [Integer]
        required :user_id, Integer, api_name: :userId

        # @!attribute user_email
        #   The email address of the user who performed the action.
        #
        #   @return [String, nil]
        optional :user_email, String, api_name: :userEmail

        # @!method initialize(user_id:, user_email: nil)
        #   @param user_id [Integer] The ID of the user who performed the action.
        #
        #   @param user_email [String] The email address of the user who performed the action.
      end
    end
  end
end
