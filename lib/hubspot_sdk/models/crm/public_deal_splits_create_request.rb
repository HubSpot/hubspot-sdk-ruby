# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicDealSplitsCreateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the deal.
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute splits
        #   An array of deal split inputs, each containing an owner ID and a percentage of
        #   the deal split.
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicDealSplitInput>]
        required :splits, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicDealSplitInput] }

        # @!method initialize(id:, splits:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicDealSplitsCreateRequest} for more details.
        #
        #   @param id [Integer] The unique identifier for the deal.
        #
        #   @param splits [Array<HubSpotSDK::Models::Crm::PublicDealSplitInput>] An array of deal split inputs, each containing an owner ID and a percentage of t
      end
    end
  end
end
