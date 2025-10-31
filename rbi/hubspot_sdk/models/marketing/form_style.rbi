# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class FormStyle < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::FormStyle,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :background_width

        sig { returns(String) }
        attr_accessor :font_family

        sig { returns(String) }
        attr_accessor :help_text_color

        sig { returns(String) }
        attr_accessor :help_text_size

        sig { returns(String) }
        attr_accessor :label_text_color

        sig { returns(String) }
        attr_accessor :label_text_size

        sig { returns(String) }
        attr_accessor :legal_consent_text_color

        sig { returns(String) }
        attr_accessor :legal_consent_text_size

        sig do
          returns(HubspotSDK::Marketing::FormStyle::SubmitAlignment::OrSymbol)
        end
        attr_accessor :submit_alignment

        sig { returns(String) }
        attr_accessor :submit_color

        sig { returns(String) }
        attr_accessor :submit_font_color

        sig { returns(String) }
        attr_accessor :submit_size

        # Styling options for the form
        sig do
          params(
            background_width: String,
            font_family: String,
            help_text_color: String,
            help_text_size: String,
            label_text_color: String,
            label_text_size: String,
            legal_consent_text_color: String,
            legal_consent_text_size: String,
            submit_alignment:
              HubspotSDK::Marketing::FormStyle::SubmitAlignment::OrSymbol,
            submit_color: String,
            submit_font_color: String,
            submit_size: String
          ).returns(T.attached_class)
        end
        def self.new(
          background_width:,
          font_family:,
          help_text_color:,
          help_text_size:,
          label_text_color:,
          label_text_size:,
          legal_consent_text_color:,
          legal_consent_text_size:,
          submit_alignment:,
          submit_color:,
          submit_font_color:,
          submit_size:
        )
        end

        sig do
          override.returns(
            {
              background_width: String,
              font_family: String,
              help_text_color: String,
              help_text_size: String,
              label_text_color: String,
              label_text_size: String,
              legal_consent_text_color: String,
              legal_consent_text_size: String,
              submit_alignment:
                HubspotSDK::Marketing::FormStyle::SubmitAlignment::OrSymbol,
              submit_color: String,
              submit_font_color: String,
              submit_size: String
            }
          )
        end
        def to_hash
        end

        module SubmitAlignment
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Marketing::FormStyle::SubmitAlignment)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LEFT =
            T.let(
              :left,
              HubspotSDK::Marketing::FormStyle::SubmitAlignment::TaggedSymbol
            )
          RIGHT =
            T.let(
              :right,
              HubspotSDK::Marketing::FormStyle::SubmitAlignment::TaggedSymbol
            )
          CENTER =
            T.let(
              :center,
              HubspotSDK::Marketing::FormStyle::SubmitAlignment::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::FormStyle::SubmitAlignment::TaggedSymbol
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
