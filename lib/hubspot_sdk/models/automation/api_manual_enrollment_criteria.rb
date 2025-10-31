# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIManualEnrollmentCriteria < HubspotSDK::Internal::Type::BaseModel
        # @!attribute should_re_enroll
        #   Whether or not the same object can enroll in this workflow twice.
        #
        #   @return [Boolean]
        required :should_re_enroll, HubspotSDK::Internal::Type::Boolean, api_name: :shouldReEnroll

        # @!attribute type
        #   The type of enrollment criteria this is, this can be "LIST_BASED",
        #   "EVENT_BASED", or "MANUAL".
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIManualEnrollmentCriteria::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIManualEnrollmentCriteria::Type }

        # @!method initialize(should_re_enroll:, type:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIManualEnrollmentCriteria} for more details.
        #
        #   @param should_re_enroll [Boolean] Whether or not the same object can enroll in this workflow twice.
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIManualEnrollmentCriteria::Type] The type of enrollment criteria this is, this can be "LIST_BASED", "EVENT_BASED"

        # The type of enrollment criteria this is, this can be "LIST_BASED",
        # "EVENT_BASED", or "MANUAL".
        #
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
