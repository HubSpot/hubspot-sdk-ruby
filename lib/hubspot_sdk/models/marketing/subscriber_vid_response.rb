# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class SubscriberVidResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute vid
        #   The internal ID of the contact
        #
        #   @return [Integer]
        required :vid, Integer

        # @!method initialize(vid:)
        #   @param vid [Integer] The internal ID of the contact
      end
    end
  end
end
