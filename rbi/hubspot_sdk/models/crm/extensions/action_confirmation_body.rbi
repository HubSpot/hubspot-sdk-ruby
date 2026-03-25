# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class ActionConfirmationBody < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::ActionConfirmationBody,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The label for the button that cancels the action.
          sig { returns(String) }
          attr_accessor :cancel_button_label

          # The label for the button that confirms the action.
          sig { returns(String) }
          attr_accessor :confirm_button_label

          # The message displayed to the user to confirm the action.
          sig { returns(String) }
          attr_accessor :prompt

          sig do
            params(
              cancel_button_label: String,
              confirm_button_label: String,
              prompt: String
            ).returns(T.attached_class)
          end
          def self.new(
            # The label for the button that cancels the action.
            cancel_button_label:,
            # The label for the button that confirms the action.
            confirm_button_label:,
            # The message displayed to the user to confirm the action.
            prompt:
          )
          end

          sig do
            override.returns(
              {
                cancel_button_label: String,
                confirm_button_label: String,
                prompt: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
