# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class SimpleUser < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the user.
        #
        #   @return [String]
        required :id, String

        # @!attribute email
        #   The email address of the user.
        #
        #   @return [String]
        required :email, String

        # @!attribute first_name
        #   The first name of the user.
        #
        #   @return [String]
        required :first_name, String, api_name: :firstName

        # @!attribute last_name
        #   The last name of the user.
        #
        #   @return [String]
        required :last_name, String, api_name: :lastName

        # @!method initialize(id:, email:, first_name:, last_name:)
        #   @param id [String] The unique identifier for the user.
        #
        #   @param email [String] The email address of the user.
        #
        #   @param first_name [String] The first name of the user.
        #
        #   @param last_name [String] The last name of the user.
      end
    end
  end
end
