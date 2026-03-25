# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicDealSplitsCreateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the deal.
        #
        #   @return [Integer]
        required :id, Integer

        # @!attribute splits
        #   An array of deal split inputs, each containing an owner ID and a percentage of
        #   the deal split.
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicDealSplitInput>]
        required :splits, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicDealSplitInput] }

        # @!method initialize(id:, splits:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicDealSplitsCreateRequest} for more details.
        #
        #   @param id [Integer] The unique identifier for the deal.
        #
        #   @param splits [Array<HubspotSDK::Models::Crm::PublicDealSplitInput>] An array of deal split inputs, each containing an owner ID and a percentage of t
      end
    end
  end
end
