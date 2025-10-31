# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class FormDisplayOptions < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::FormDisplayOptions,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Whether the form will render as raw HTML as opposed to inside an iFrame.
        sig { returns(T::Boolean) }
        attr_accessor :render_raw_html

        # Styling options for the form
        sig { returns(HubspotSDK::Marketing::FormStyle) }
        attr_reader :style

        sig { params(style: HubspotSDK::Marketing::FormStyle::OrHash).void }
        attr_writer :style

        # The text displayed on the form submit button.
        sig { returns(String) }
        attr_accessor :submit_button_text

        # The theme used for styling the input fields. This will not apply if the form is
        # added to a HubSpot CMS page.
        sig do
          returns(HubspotSDK::Marketing::FormDisplayOptions::Theme::OrSymbol)
        end
        attr_accessor :theme

        sig { returns(T.nilable(String)) }
        attr_reader :css_class

        sig { params(css_class: String).void }
        attr_writer :css_class

        # Options for styling the form.
        sig do
          params(
            render_raw_html: T::Boolean,
            style: HubspotSDK::Marketing::FormStyle::OrHash,
            submit_button_text: String,
            theme: HubspotSDK::Marketing::FormDisplayOptions::Theme::OrSymbol,
            css_class: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Whether the form will render as raw HTML as opposed to inside an iFrame.
          render_raw_html:,
          # Styling options for the form
          style:,
          # The text displayed on the form submit button.
          submit_button_text:,
          # The theme used for styling the input fields. This will not apply if the form is
          # added to a HubSpot CMS page.
          theme:,
          css_class: nil
        )
        end

        sig do
          override.returns(
            {
              render_raw_html: T::Boolean,
              style: HubspotSDK::Marketing::FormStyle,
              submit_button_text: String,
              theme: HubspotSDK::Marketing::FormDisplayOptions::Theme::OrSymbol,
              css_class: String
            }
          )
        end
        def to_hash
        end

        # The theme used for styling the input fields. This will not apply if the form is
        # added to a HubSpot CMS page.
        module Theme
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Marketing::FormDisplayOptions::Theme)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          DEFAULT_STYLE =
            T.let(
              :default_style,
              HubspotSDK::Marketing::FormDisplayOptions::Theme::TaggedSymbol
            )
          CANVAS =
            T.let(
              :canvas,
              HubspotSDK::Marketing::FormDisplayOptions::Theme::TaggedSymbol
            )
          LINEAR =
            T.let(
              :linear,
              HubspotSDK::Marketing::FormDisplayOptions::Theme::TaggedSymbol
            )
          ROUND =
            T.let(
              :round,
              HubspotSDK::Marketing::FormDisplayOptions::Theme::TaggedSymbol
            )
          SHARP =
            T.let(
              :sharp,
              HubspotSDK::Marketing::FormDisplayOptions::Theme::TaggedSymbol
            )
          LEGACY =
            T.let(
              :legacy,
              HubspotSDK::Marketing::FormDisplayOptions::Theme::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Marketing::FormDisplayOptions::Theme::TaggedSymbol
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
