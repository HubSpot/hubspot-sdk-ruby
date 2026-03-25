# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalUserProfile < HubspotSDK::Internal::Type::BaseModel
        # @!attribute email
        #   The email address of the user.
        #
        #   @return [String]
        required :email, String

        # @!attribute first_name
        #   The first name of the user.
        #
        #   @return [String, nil]
        optional :first_name, String, api_name: :firstName

        # @!attribute full_name
        #   The full name of the user.
        #
        #   @return [String, nil]
        optional :full_name, String, api_name: :fullName

        # @!attribute last_name
        #   The last name of the user.
        #
        #   @return [String, nil]
        optional :last_name, String, api_name: :lastName

        # @!method initialize(email:, first_name: nil, full_name: nil, last_name: nil)
        #   @param email [String] The email address of the user.
        #
        #   @param first_name [String] The first name of the user.
        #
        #   @param full_name [String] The full name of the user.
        #
        #   @param last_name [String] The last name of the user.
      end
    end
  end
end
