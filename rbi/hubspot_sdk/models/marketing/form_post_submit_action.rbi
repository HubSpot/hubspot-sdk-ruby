# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class FormPostSubmitAction < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::FormPostSubmitAction,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The action to take after submit. The default action is displaying a thank you
        # message.
        sig do
          returns(HubspotSDK::Marketing::FormPostSubmitAction::Type::OrSymbol)
        end
        attr_accessor :type

        # The thank you text or the page to redirect to.
        sig { returns(String) }
        attr_accessor :value

        # What should happen after the customer submits the form.
        sig do
          params(
            type: HubspotSDK::Marketing::FormPostSubmitAction::Type::OrSymbol,
            value: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The action to take after submit. The default action is displaying a thank you
          # message.
          type:,
          # The thank you text or the page to redirect to.
          value:
        )
        end

        sig do
          override.returns(
            {
              type: HubspotSDK::Marketing::FormPostSubmitAction::Type::OrSymbol,
              value: String
            }
          )
        end
        def to_hash
        end

        # The action to take after submit. The default action is displaying a thank you
        # message.
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Marketing::FormPostSubmitAction::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          REDIRECT_URL =
            T.let(
              :redirect_url,
              HubspotSDK::Marketing::FormPostSubmitAction::Type::TaggedSymbol
            )
          THANK_YOU =
            T.let(
              :thank_you,
              HubspotSDK::Marketing::FormPostSubmitAction::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::FormPostSubmitAction::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
