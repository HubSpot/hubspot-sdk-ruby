# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicDealSplitInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute owner_id
        #   The unique identifier of the owner receiving the deal split.
        #
        #   @return [Integer]
        required :owner_id, Integer, api_name: :ownerId

        # @!attribute percentage
        #   The portion of the deal assigned to the owner, expressed as a percentage. The
        #   total percentage for all splits in a deal must sum up to 1.0 (100%) and can have
        #   up to 8 decimal places.
        #
        #   @return [Float]
        required :percentage, Float

        # @!method initialize(owner_id:, percentage:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicDealSplitInput} for more details.
        #
        #   @param owner_id [Integer] The unique identifier of the owner receiving the deal split.
        #
        #   @param percentage [Float] The portion of the deal assigned to the owner, expressed as a percentage. The to
      end
    end
  end
end
