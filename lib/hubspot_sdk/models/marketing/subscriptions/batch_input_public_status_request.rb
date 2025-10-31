# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        class BatchInputPublicStatusRequest < HubspotSDK::Internal::Type::BaseModel
          # @!attribute inputs
          #
          #   @return [Array<HubspotSDK::Models::Marketing::Subscriptions::PublicStatusRequest>]
          required :inputs,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::Subscriptions::PublicStatusRequest] }

          # @!method initialize(inputs:)
          #   @param inputs [Array<HubspotSDK::Models::Marketing::Subscriptions::PublicStatusRequest>]
        end
      end
    end
  end
end
