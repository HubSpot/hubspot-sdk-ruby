# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        class PublicDealSplitsCreateRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [Integer]
          required :id, Integer

          # @!attribute splits
          #
          #   @return [Array<HubspotSDK::Models::Crm::Objects::PublicDealSplitInput>]
          required :splits,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Objects::PublicDealSplitInput] }

          # @!method initialize(id:, splits:)
          #   @param id [Integer]
          #   @param splits [Array<HubspotSDK::Models::Crm::Objects::PublicDealSplitInput>]
        end
      end
    end
  end
end
