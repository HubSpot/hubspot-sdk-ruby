# typed: strong

module HubspotSDK
  module Models
    module Cms
      class OptionDecoratorsExtensionData < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::OptionDecoratorsExtensionData,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Hash[Symbol, HubspotSDK::Cms::OptionDecorations]) }
        attr_accessor :option_decorators

        sig do
          returns(
            HubspotSDK::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle::TaggedSymbol
          )
        end
        attr_accessor :option_decorator_style

        sig do
          params(
            option_decorators:
              T::Hash[Symbol, HubspotSDK::Cms::OptionDecorations::OrHash],
            option_decorator_style:
              HubspotSDK::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(option_decorators:, option_decorator_style:)
        end

        sig do
          override.returns(
            {
              option_decorators:
                T::Hash[Symbol, HubspotSDK::Cms::OptionDecorations],
              option_decorator_style:
                HubspotSDK::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module OptionDecoratorStyle
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LABEL_ONLY =
            T.let(
              :LABEL_ONLY,
              HubspotSDK::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle::TaggedSymbol
            )
          LABEL_WITH_BADGE =
            T.let(
              :LABEL_WITH_BADGE,
              HubspotSDK::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle::TaggedSymbol
            )
          LABEL_WITH_COLOR =
            T.let(
              :LABEL_WITH_COLOR,
              HubspotSDK::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle::TaggedSymbol
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
