# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class UnpauseRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute proposed_next_billing_date
        #
        #   @return [Integer]
        required :proposed_next_billing_date, Integer, api_name: :proposedNextBillingDate

        # @!method initialize(proposed_next_billing_date:)
        #   @param proposed_next_billing_date [Integer]
      end
    end
  end
end
