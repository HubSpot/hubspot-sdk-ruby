# frozen_string_literal: true

module HubspotSDK
  module Models
    class ErrorDetail < HubspotSDK::Internal::Type::BaseModel
      # @!attribute message
      #   A human readable message describing the error along with remediation steps where
      #   appropriate.
      #
      #   @return [String]
      required :message, String

      # @!attribute code
      #   The status code associated with the error detail.
      #
      #   @return [String, nil]
      optional :code, String

      # @!attribute context
      #   Context about the error condition.
      #
      #   @return [Hash{Symbol=>Array<String>}, nil]
      optional :context, HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::ArrayOf[String]]

      # @!attribute in_
      #   The name of the field or parameter in which the error was found.
      #
      #   @return [String, nil]
      optional :in_, String, api_name: :in

      # @!attribute sub_category
      #   A specific category that contains more specific detail about the error.
      #
      #   @return [String, nil]
      optional :sub_category, String, api_name: :subCategory

      # @!method initialize(message:, code: nil, context: nil, in_: nil, sub_category: nil)
      #   Some parameter documentations has been truncated, see
      #   {HubspotSDK::Models::ErrorDetail} for more details.
      #
      #   @param message [String] A human readable message describing the error along with remediation steps where
      #
      #   @param code [String] The status code associated with the error detail.
      #
      #   @param context [Hash{Symbol=>Array<String>}] Context about the error condition.
      #
      #   @param in_ [String] The name of the field or parameter in which the error was found.
      #
      #   @param sub_category [String] A specific category that contains more specific detail about the error.
    end
  end
end
