# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Objects
        # @see HubSpotSDK::Resources::Crm::Objects::CommercePayments#delete
        class CommercePaymentDeleteParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute commerce_payment_id
          #
          #   @return [String]
          required :commerce_payment_id, String

          # @!method initialize(commerce_payment_id:, request_options: {})
          #   @param commerce_payment_id [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
