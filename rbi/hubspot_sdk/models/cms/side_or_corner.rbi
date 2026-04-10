# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class SideOrCorner < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::SideOrCorner, HubSpotSDK::Internal::AnyHash)
          end

        # Specifies the horizontal side of an element.
        sig { returns(HubSpotSDK::Cms::SideOrCorner::HorizontalSide::OrSymbol) }
        attr_accessor :horizontal_side

        # Specifies the vertical side of an element.
        sig { returns(HubSpotSDK::Cms::SideOrCorner::VerticalSide::OrSymbol) }
        attr_accessor :vertical_side

        sig do
          params(
            horizontal_side:
              HubSpotSDK::Cms::SideOrCorner::HorizontalSide::OrSymbol,
            vertical_side: HubSpotSDK::Cms::SideOrCorner::VerticalSide::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the horizontal side of an element.
          horizontal_side:,
          # Specifies the vertical side of an element.
          vertical_side:
        )
        end

        sig do
          override.returns(
            {
              horizontal_side:
                HubSpotSDK::Cms::SideOrCorner::HorizontalSide::OrSymbol,
              vertical_side:
                HubSpotSDK::Cms::SideOrCorner::VerticalSide::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Specifies the horizontal side of an element.
        module HorizontalSide
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::SideOrCorner::HorizontalSide)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CENTER =
            T.let(
              :CENTER,
              HubSpotSDK::Cms::SideOrCorner::HorizontalSide::TaggedSymbol
            )
          LEFT =
            T.let(
              :LEFT,
              HubSpotSDK::Cms::SideOrCorner::HorizontalSide::TaggedSymbol
            )
          RIGHT =
            T.let(
              :RIGHT,
              HubSpotSDK::Cms::SideOrCorner::HorizontalSide::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::SideOrCorner::HorizontalSide::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Specifies the vertical side of an element.
        module VerticalSide
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Cms::SideOrCorner::VerticalSide)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOTTOM =
            T.let(
              :BOTTOM,
              HubSpotSDK::Cms::SideOrCorner::VerticalSide::TaggedSymbol
            )
          MIDDLE =
            T.let(
              :MIDDLE,
              HubSpotSDK::Cms::SideOrCorner::VerticalSide::TaggedSymbol
            )
          TOP =
            T.let(
              :TOP,
              HubSpotSDK::Cms::SideOrCorner::VerticalSide::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::SideOrCorner::VerticalSide::TaggedSymbol
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
