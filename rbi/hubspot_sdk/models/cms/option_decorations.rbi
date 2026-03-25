# typed: strong

module HubspotSDK
  module Models
    module Cms
      class OptionDecorations < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::OptionDecorations,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubspotSDK::Cms::OptionDecorations::Color::TaggedSymbol) }
        attr_accessor :color

        sig do
          params(
            color: HubspotSDK::Cms::OptionDecorations::Color::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(color:)
        end

        sig do
          override.returns(
            { color: HubspotSDK::Cms::OptionDecorations::Color::TaggedSymbol }
          )
        end
        def to_hash
        end

        module Color
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::OptionDecorations::Color)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BLACK =
            T.let(
              :BLACK,
              HubspotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          BLUE =
            T.let(
              :BLUE,
              HubspotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          BLUE_LIGHT =
            T.let(
              :BLUE_LIGHT,
              HubspotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          GRAY =
            T.let(
              :GRAY,
              HubspotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          GREEN =
            T.let(
              :GREEN,
              HubspotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          GREEN_LIGHT =
            T.let(
              :GREEN_LIGHT,
              HubspotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          ORANGE =
            T.let(
              :ORANGE,
              HubspotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          ORANGE_LIGHT =
            T.let(
              :ORANGE_LIGHT,
              HubspotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          PINK =
            T.let(
              :PINK,
              HubspotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          PINK_LIGHT =
            T.let(
              :PINK_LIGHT,
              HubspotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          PURPLE =
            T.let(
              :PURPLE,
              HubspotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          PURPLE_LIGHT =
            T.let(
              :PURPLE_LIGHT,
              HubspotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          RED =
            T.let(:RED, HubspotSDK::Cms::OptionDecorations::Color::TaggedSymbol)
          RED_LIGHT =
            T.let(
              :RED_LIGHT,
              HubspotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          TEAL =
            T.let(
              :TEAL,
              HubspotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          TEAL_LIGHT =
            T.let(
              :TEAL_LIGHT,
              HubspotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          YELLOW =
            T.let(
              :YELLOW,
              HubspotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )
          YELLOW_LIGHT =
            T.let(
              :YELLOW_LIGHT,
              HubspotSDK::Cms::OptionDecorations::Color::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Cms::OptionDecorations::Color::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
