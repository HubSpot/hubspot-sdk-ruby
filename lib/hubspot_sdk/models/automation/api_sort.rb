# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APISort < HubspotSDK::Internal::Type::BaseModel
        # @!attribute order
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APISort::Order]
        required :order, enum: -> { HubspotSDK::Automation::APISort::Order }

        # @!attribute property
        #
        #   @return [String]
        required :property, String

        # @!attribute missing
        #
        #   @return [String, nil]
        optional :missing, String

        # @!method initialize(order:, property:, missing: nil)
        #   @param order [Symbol, HubspotSDK::Models::Automation::APISort::Order]
        #   @param property [String]
        #   @param missing [String]

        # @see HubspotSDK::Models::Automation::APISort#order
        module Order
          extend HubspotSDK::Internal::Type::Enum

          ASC = :ASC
          DESC = :DESC

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
