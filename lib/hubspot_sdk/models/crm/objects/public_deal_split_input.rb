# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        class PublicDealSplitInput < HubspotSDK::Internal::Type::BaseModel
          # @!attribute owner_id
          #
          #   @return [Integer]
          required :owner_id, Integer, api_name: :ownerId

          # @!attribute percentage
          #
          #   @return [Float]
          required :percentage, Float

          # @!method initialize(owner_id:, percentage:)
          #   @param owner_id [Integer]
          #   @param percentage [Float]
        end
      end
    end
  end
end
