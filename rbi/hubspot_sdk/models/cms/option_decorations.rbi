# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class OptionDecorations < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::OptionDecorations,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubSpotSDK::Cms::OptionDecorations::Color::TaggedSymbol) }
        attr_accessor :color

        sig do
          params(
            color: HubSpotSDK::Cms::OptionDecorations::Color::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(color:)
        end

        sig do
          override.returns(
            { color: HubSpotSDK::Cms::OptionDecorations::Color::TaggedSymbol }
          )
        end
        def to_hash
        end

        module Color
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::OptionDecorations::Color)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BLACK =
            T.let(
              :BLACK,
              HubSpotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          BLUE =
            T.let(
              :BLUE,
              HubSpotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          BLUE_LIGHT =
            T.let(
              :BLUE_LIGHT,
              HubSpotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          GRAY =
            T.let(
              :GRAY,
              HubSpotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          GREEN =
            T.let(
              :GREEN,
              HubSpotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          GREEN_LIGHT =
            T.let(
              :GREEN_LIGHT,
              HubSpotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          ORANGE =
            T.let(
              :ORANGE,
              HubSpotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          ORANGE_LIGHT =
            T.let(
              :ORANGE_LIGHT,
              HubSpotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          PINK =
            T.let(
              :PINK,
              HubSpotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          PINK_LIGHT =
            T.let(
              :PINK_LIGHT,
              HubSpotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          PURPLE =
            T.let(
              :PURPLE,
              HubSpotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          PURPLE_LIGHT =
            T.let(
              :PURPLE_LIGHT,
              HubSpotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          RED =
            T.let(:RED, HubSpotSDK::Cms::OptionDecorations::Color::TaggedSymbol)
          RED_LIGHT =
            T.let(
              :RED_LIGHT,
              HubSpotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          TEAL =
            T.let(
              :TEAL,
              HubSpotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          TEAL_LIGHT =
            T.let(
              :TEAL_LIGHT,
              HubSpotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          YELLOW =
            T.let(
              :YELLOW,
              HubSpotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          YELLOW_LIGHT =
            T.let(
              :YELLOW_LIGHT,
              HubSpotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubSpotSDK::Cms::OptionDecorations::Color::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
