# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class LegalConsentCheckbox < HubspotSDK::Internal::Type::BaseModel
        # @!attribute label
        #   The main label for the form field.
        #
        #   @return [String]
        required :label, String

        # @!attribute required
        #   Whether this checkbox is required when submitting the form.
        #
        #   @return [Boolean]
        required :required, HubspotSDK::Internal::Type::Boolean

        # @!attribute subscription_type_id
        #
        #   @return [Integer]
        required :subscription_type_id, Integer, api_name: :subscriptionTypeId

        # @!method initialize(label:, required:, subscription_type_id:)
        #   @param label [String] The main label for the form field.
        #
        #   @param required [Boolean] Whether this checkbox is required when submitting the form.
        #
        #   @param subscription_type_id [Integer]
      end
    end
  end
end
