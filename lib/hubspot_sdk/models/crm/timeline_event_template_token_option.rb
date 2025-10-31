# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class TimelineEventTemplateTokenOption < HubspotSDK::Internal::Type::BaseModel
        # @!attribute label
        #
        #   @return [String]
        required :label, String

        # @!attribute value
        #
        #   @return [String]
        required :value, String

        # @!method initialize(label:, value:)
        #   @param label [String]
        #   @param value [String]
      end
    end
  end
end
