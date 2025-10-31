# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class LegalConsentOptionsExplicitConsentToProcess < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::LegalConsentOptionsExplicitConsentToProcess,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Marketing::LegalConsentCheckbox]) }
        attr_accessor :communications_checkboxes

        sig { returns(String) }
        attr_accessor :privacy_text

        sig do
          returns(
            HubspotSDK::Marketing::LegalConsentOptionsExplicitConsentToProcess::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :communication_consent_text

        sig { params(communication_consent_text: String).void }
        attr_writer :communication_consent_text

        sig { returns(T.nilable(String)) }
        attr_reader :consent_to_process_checkbox_label

        sig { params(consent_to_process_checkbox_label: String).void }
        attr_writer :consent_to_process_checkbox_label

        sig { returns(T.nilable(String)) }
        attr_reader :consent_to_process_footer_text

        sig { params(consent_to_process_footer_text: String).void }
        attr_writer :consent_to_process_footer_text

        sig { returns(T.nilable(String)) }
        attr_reader :consent_to_process_text

        sig { params(consent_to_process_text: String).void }
        attr_writer :consent_to_process_text

        sig do
          params(
            communications_checkboxes:
              T::Array[HubspotSDK::Marketing::LegalConsentCheckbox::OrHash],
            privacy_text: String,
            type:
              HubspotSDK::Marketing::LegalConsentOptionsExplicitConsentToProcess::Type::OrSymbol,
            communication_consent_text: String,
            consent_to_process_checkbox_label: String,
            consent_to_process_footer_text: String,
            consent_to_process_text: String
          ).returns(T.attached_class)
        end
        def self.new(
          communications_checkboxes:,
          privacy_text:,
          type:,
          communication_consent_text: nil,
          consent_to_process_checkbox_label: nil,
          consent_to_process_footer_text: nil,
          consent_to_process_text: nil
        )
        end

        sig do
          override.returns(
            {
              communications_checkboxes:
                T::Array[HubspotSDK::Marketing::LegalConsentCheckbox],
              privacy_text: String,
              type:
                HubspotSDK::Marketing::LegalConsentOptionsExplicitConsentToProcess::Type::OrSymbol,
              communication_consent_text: String,
              consent_to_process_checkbox_label: String,
              consent_to_process_footer_text: String,
              consent_to_process_text: String
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Marketing::LegalConsentOptionsExplicitConsentToProcess::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXPLICIT_CONSENT_TO_PROCESS =
            T.let(
              :explicit_consent_to_process,
              HubspotSDK::Marketing::LegalConsentOptionsExplicitConsentToProcess::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::LegalConsentOptionsExplicitConsentToProcess::Type::TaggedSymbol
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
