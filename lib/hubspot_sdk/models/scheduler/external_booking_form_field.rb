# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalBookingFormField < HubspotSDK::Internal::Type::BaseModel
        # @!attribute name
        #   The name of the form field.
        #
        #   @return [String]
        required :name, String

        # @!attribute value
        #   The value associated with the form field.
        #
        #   @return [String]
        required :value, String

        # @!method initialize(name:, value:)
        #   @param name [String] The name of the form field.
        #
        #   @param value [String] The value associated with the form field.
      end
    end
  end
end
