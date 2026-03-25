# frozen_string_literal: true

module HubspotSDK
  module Models
    class VersionUser < HubspotSDK::Internal::Type::BaseModel
      # @!attribute id
      #   The unique ID of the User.
      #
      #   @return [String]
      required :id, String

      # @!attribute email
      #   The email address of the user.
      #
      #   @return [String]
      required :email, String

      # @!attribute full_name
      #   The first and last name of the User.
      #
      #   @return [String]
      required :full_name, String, api_name: :fullName

      # @!method initialize(id:, email:, full_name:)
      #   @param id [String] The unique ID of the User.
      #
      #   @param email [String] The email address of the user.
      #
      #   @param full_name [String] The first and last name of the User.
    end
  end
end
