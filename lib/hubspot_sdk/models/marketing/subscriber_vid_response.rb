# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class SubscriberVidResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute vid
        #
        #   @return [Integer]
        required :vid, Integer

        # @!method initialize(vid:)
        #   @param vid [Integer]
      end
    end
  end
end
