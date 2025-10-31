# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIManualEnrollmentCriteria < HubspotSDK::Internal::Type::BaseModel
        # @!attribute should_re_enroll
        #
        #   @return [Boolean]
        required :should_re_enroll, HubspotSDK::Internal::Type::Boolean, api_name: :shouldReEnroll

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIManualEnrollmentCriteria::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIManualEnrollmentCriteria::Type }

        # @!method initialize(should_re_enroll:, type:)
        #   @param should_re_enroll [Boolean]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIManualEnrollmentCriteria::Type]

        # @see HubspotSDK::Models::Automation::APIManualEnrollmentCriteria#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          MANUAL = :MANUAL

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
