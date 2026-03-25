# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class SubscriberEmailResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute email
        #   The email of the contact
        #
        #   @return [String]
        required :email, String

        # @!attribute vid
        #   The internal ID of the contact
        #
        #   @return [Integer]
        required :vid, Integer

        # @!method initialize(email:, vid:)
        #   @param email [String] The email of the contact
        #
        #   @param vid [Integer] The internal ID of the contact
      end
    end
  end
end
