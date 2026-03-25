# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicDealSplitsBatchCreateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #   An array of deal split inputs
        #
        #   @return [Array<HubspotSDK::Models::Crm::PublicDealSplitsCreateRequest>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicDealSplitsCreateRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Crm::PublicDealSplitsCreateRequest>] An array of deal split inputs
      end
    end
  end
end
