# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicEmailContent < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicEmailContent,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :flex_areas

        sig { params(flex_areas: T::Hash[Symbol, T.anything]).void }
        attr_writer :flex_areas

        sig { returns(T.nilable(String)) }
        attr_reader :plain_text_version

        sig { params(plain_text_version: String).void }
        attr_writer :plain_text_version

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :smart_fields

        sig { params(smart_fields: T::Hash[Symbol, T.anything]).void }
        attr_writer :smart_fields

        sig do
          returns(T.nilable(HubspotSDK::Marketing::PublicEmailStyleSettings))
        end
        attr_reader :style_settings

        sig do
          params(
            style_settings:
              HubspotSDK::Marketing::PublicEmailStyleSettings::OrHash
          ).void
        end
        attr_writer :style_settings

        sig { returns(T.nilable(String)) }
        attr_reader :template_path

        sig { params(template_path: String).void }
        attr_writer :template_path

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :theme_settings_values

        sig { params(theme_settings_values: T::Hash[Symbol, T.anything]).void }
        attr_writer :theme_settings_values

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :widget_containers

        sig { params(widget_containers: T::Hash[Symbol, T.anything]).void }
        attr_writer :widget_containers

        sig { returns(T.nilable(T::Hash[Symbol, T.anything])) }
        attr_reader :widgets

        sig { params(widgets: T::Hash[Symbol, T.anything]).void }
        attr_writer :widgets

        sig do
          params(
            flex_areas: T::Hash[Symbol, T.anything],
            plain_text_version: String,
            smart_fields: T::Hash[Symbol, T.anything],
            style_settings:
              HubspotSDK::Marketing::PublicEmailStyleSettings::OrHash,
            template_path: String,
            theme_settings_values: T::Hash[Symbol, T.anything],
            widget_containers: T::Hash[Symbol, T.anything],
            widgets: T::Hash[Symbol, T.anything]
          ).returns(T.attached_class)
        end
        def self.new(
          flex_areas: nil,
          plain_text_version: nil,
          smart_fields: nil,
          style_settings: nil,
          template_path: nil,
          theme_settings_values: nil,
          widget_containers: nil,
          widgets: nil
        )
        end

        sig do
          override.returns(
            {
              flex_areas: T::Hash[Symbol, T.anything],
              plain_text_version: String,
              smart_fields: T::Hash[Symbol, T.anything],
              style_settings: HubspotSDK::Marketing::PublicEmailStyleSettings,
              template_path: String,
              theme_settings_values: T::Hash[Symbol, T.anything],
              widget_containers: T::Hash[Symbol, T.anything],
              widgets: T::Hash[Symbol, T.anything]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
