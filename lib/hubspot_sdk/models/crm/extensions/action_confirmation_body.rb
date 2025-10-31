# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        class ActionConfirmationBody < HubspotSDK::Internal::Type::BaseModel
          # @!attribute cancel_button_label
          #
          #   @return [String]
          required :cancel_button_label, String, api_name: :cancelButtonLabel

          # @!attribute confirm_button_label
          #
          #   @return [String]
          required :confirm_button_label, String, api_name: :confirmButtonLabel

          # @!attribute prompt
          #
          #   @return [String]
          required :prompt, String

          # @!method initialize(cancel_button_label:, confirm_button_label:, prompt:)
          #   @param cancel_button_label [String]
          #   @param confirm_button_label [String]
          #   @param prompt [String]
        end
      end
    end
  end
end
