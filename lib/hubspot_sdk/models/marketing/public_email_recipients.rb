# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class PublicEmailRecipients < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute exclude
        #   Excluded IDs.
        #
        #   @return [Array<String>, nil]
        optional :exclude, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute include
        #   Included IDs.
        #
        #   @return [Array<String>, nil]
        optional :include, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(exclude: nil, include: nil)
        #   @param exclude [Array<String>] Excluded IDs.
        #
        #   @param include [Array<String>] Included IDs.
      end
    end
  end
end
