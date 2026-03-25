# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class SideOrCorner < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::SideOrCorner,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Specifies the horizontal side of an element.
          sig do
            returns(
              HubspotSDK::Cms::Blogs::SideOrCorner::HorizontalSide::OrSymbol
            )
          end
          attr_accessor :horizontal_side

          # Specifies the vertical side of an element.
          sig do
            returns(
              HubspotSDK::Cms::Blogs::SideOrCorner::VerticalSide::OrSymbol
            )
          end
          attr_accessor :vertical_side

          sig do
            params(
              horizontal_side:
                HubspotSDK::Cms::Blogs::SideOrCorner::HorizontalSide::OrSymbol,
              vertical_side:
                HubspotSDK::Cms::Blogs::SideOrCorner::VerticalSide::OrSymbol
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
                  HubspotSDK::Cms::Blogs::SideOrCorner::HorizontalSide::OrSymbol,
                vertical_side:
                  HubspotSDK::Cms::Blogs::SideOrCorner::VerticalSide::OrSymbol
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
                T.all(
                  Symbol,
                  HubspotSDK::Cms::Blogs::SideOrCorner::HorizontalSide
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CENTER =
              T.let(
                :CENTER,
                HubspotSDK::Cms::Blogs::SideOrCorner::HorizontalSide::TaggedSymbol
              )
            LEFT =
              T.let(
                :LEFT,
                HubspotSDK::Cms::Blogs::SideOrCorner::HorizontalSide::TaggedSymbol
              )
            RIGHT =
              T.let(
                :RIGHT,
                HubspotSDK::Cms::Blogs::SideOrCorner::HorizontalSide::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Cms::Blogs::SideOrCorner::HorizontalSide::TaggedSymbol
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
                T.all(
                  Symbol,
                  HubspotSDK::Cms::Blogs::SideOrCorner::VerticalSide
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            BOTTOM =
              T.let(
                :BOTTOM,
                HubspotSDK::Cms::Blogs::SideOrCorner::VerticalSide::TaggedSymbol
              )
            MIDDLE =
              T.let(
                :MIDDLE,
                HubspotSDK::Cms::Blogs::SideOrCorner::VerticalSide::TaggedSymbol
              )
            TOP =
              T.let(
                :TOP,
                HubspotSDK::Cms::Blogs::SideOrCorner::VerticalSide::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Cms::Blogs::SideOrCorner::VerticalSide::TaggedSymbol
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
end
