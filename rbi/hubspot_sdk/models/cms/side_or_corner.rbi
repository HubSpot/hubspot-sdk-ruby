# typed: strong

module HubspotSDK
  module Models
    module Cms
      class SideOrCorner < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::SideOrCorner, HubspotSDK::Internal::AnyHash)
          end

        # Specifies the horizontal side of an element.
        sig { returns(HubspotSDK::Cms::SideOrCorner::HorizontalSide::OrSymbol) }
        attr_accessor :horizontal_side

        # Specifies the vertical side of an element.
        sig { returns(HubspotSDK::Cms::SideOrCorner::VerticalSide::OrSymbol) }
        attr_accessor :vertical_side

        sig do
          params(
            horizontal_side:
              HubspotSDK::Cms::SideOrCorner::HorizontalSide::OrSymbol,
            vertical_side: HubspotSDK::Cms::SideOrCorner::VerticalSide::OrSymbol
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
                HubspotSDK::Cms::SideOrCorner::HorizontalSide::OrSymbol,
              vertical_side:
                HubspotSDK::Cms::SideOrCorner::VerticalSide::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Specifies the horizontal side of an element.
        module HorizontalSide
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::SideOrCorner::HorizontalSide)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CENTER =
            T.let(
              :CENTER,
              HubspotSDK::Cms::SideOrCorner::HorizontalSide::TaggedSymbol
            )
          LEFT =
            T.let(
              :LEFT,
              HubspotSDK::Cms::SideOrCorner::HorizontalSide::TaggedSymbol
            )
          RIGHT =
            T.let(
              :RIGHT,
              HubspotSDK::Cms::SideOrCorner::HorizontalSide::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::SideOrCorner::HorizontalSide::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Specifies the vertical side of an element.
        module VerticalSide
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::SideOrCorner::VerticalSide)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          BOTTOM =
            T.let(
              :BOTTOM,
              HubspotSDK::Cms::SideOrCorner::VerticalSide::TaggedSymbol
            )
          MIDDLE =
            T.let(
              :MIDDLE,
              HubspotSDK::Cms::SideOrCorner::VerticalSide::TaggedSymbol
            )
          TOP =
            T.let(
              :TOP,
              HubspotSDK::Cms::SideOrCorner::VerticalSide::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::SideOrCorner::VerticalSide::TaggedSymbol
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
