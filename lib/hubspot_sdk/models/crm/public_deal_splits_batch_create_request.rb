# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicDealSplitsBatchCreateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   An array of deal split inputs
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PublicDealSplitsCreateRequest>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PublicDealSplitsCreateRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Crm::PublicDealSplitsCreateRequest>] An array of deal split inputs
      end
    end
  end
end
