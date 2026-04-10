# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class OptionDecoratorsExtensionData < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::OptionDecoratorsExtensionData,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Hash[Symbol, HubSpotSDK::Cms::OptionDecorations]) }
        attr_accessor :option_decorators

        sig do
          returns(
            HubSpotSDK::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle::TaggedSymbol
          )
        end
        attr_accessor :option_decorator_style

        sig do
          params(
            option_decorators:
              T::Hash[Symbol, HubSpotSDK::Cms::OptionDecorations::OrHash],
            option_decorator_style:
              HubSpotSDK::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(option_decorators:, option_decorator_style:)
        end

        sig do
          override.returns(
            {
              option_decorators:
                T::Hash[Symbol, HubSpotSDK::Cms::OptionDecorations],
              option_decorator_style:
                HubSpotSDK::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module OptionDecoratorStyle
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LABEL_ONLY =
            T.let(
              :LABEL_ONLY,
              HubSpotSDK::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle::TaggedSymbol
            )
          LABEL_WITH_BADGE =
            T.let(
              :LABEL_WITH_BADGE,
              HubSpotSDK::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle::TaggedSymbol
            )
          LABEL_WITH_COLOR =
            T.let(
              :LABEL_WITH_COLOR,
              HubSpotSDK::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::OptionDecoratorsExtensionData::OptionDecoratorStyle::TaggedSymbol
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
