# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class ActionConfirmationBody < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute cancel_button_label
          #   The label for the button that cancels the action.
          #
          #   @return [String]
          required :cancel_button_label, String, api_name: :cancelButtonLabel

          # @!attribute confirm_button_label
          #   The label for the button that confirms the action.
          #
          #   @return [String]
          required :confirm_button_label, String, api_name: :confirmButtonLabel

          # @!attribute prompt
          #   The message displayed to the user to confirm the action.
          #
          #   @return [String]
          required :prompt, String

          # @!method initialize(cancel_button_label:, confirm_button_label:, prompt:)
          #   @param cancel_button_label [String] The label for the button that cancels the action.
          #
          #   @param confirm_button_label [String] The label for the button that confirms the action.
          #
          #   @param prompt [String] The message displayed to the user to confirm the action.
        end
      end
    end
  end
end
