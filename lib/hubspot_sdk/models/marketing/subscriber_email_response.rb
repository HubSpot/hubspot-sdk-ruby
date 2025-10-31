# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class SubscriberEmailResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute email
        #
        #   @return [String]
        required :email, String

        # @!attribute vid
        #
        #   @return [Integer]
        required :vid, Integer

        # @!method initialize(email:, vid:)
        #   @param email [String]
        #   @param vid [Integer]
      end
    end
  end
end
