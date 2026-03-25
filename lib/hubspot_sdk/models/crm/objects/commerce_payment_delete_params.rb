# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        # @see HubspotSDK::Resources::Crm::Objects::CommercePayments#delete
        class CommercePaymentDeleteParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute commerce_payment_id
          #
          #   @return [String]
          required :commerce_payment_id, String

          # @!method initialize(commerce_payment_id:, request_options: {})
          #   @param commerce_payment_id [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
