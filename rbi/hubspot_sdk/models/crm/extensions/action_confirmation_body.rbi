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

          sig { returns(String) }
          attr_accessor :cancel_button_label

          sig { returns(String) }
          attr_accessor :confirm_button_label

          sig { returns(String) }
          attr_accessor :prompt

          sig do
            params(
              cancel_button_label: String,
              confirm_button_label: String,
              prompt: String
            ).returns(T.attached_class)
          end
          def self.new(cancel_button_label:, confirm_button_label:, prompt:)
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
