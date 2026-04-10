# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class Gradient < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::Gradient, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(HubSpotSDK::Cms::Angle) }
        attr_reader :angle

        sig { params(angle: HubSpotSDK::Cms::Angle::OrHash).void }
        attr_writer :angle

        sig { returns(T::Array[HubSpotSDK::Cms::ColorStop]) }
        attr_accessor :colors

        sig { returns(HubSpotSDK::Cms::SideOrCorner) }
        attr_reader :side_or_corner

        sig do
          params(side_or_corner: HubSpotSDK::Cms::SideOrCorner::OrHash).void
        end
        attr_writer :side_or_corner

        sig do
          params(
            angle: HubSpotSDK::Cms::Angle::OrHash,
            colors: T::Array[HubSpotSDK::Cms::ColorStop::OrHash],
            side_or_corner: HubSpotSDK::Cms::SideOrCorner::OrHash
          ).returns(T.attached_class)
        end
        def self.new(angle:, colors:, side_or_corner:)
        end

        sig do
          override.returns(
            {
              angle: HubSpotSDK::Cms::Angle,
              colors: T::Array[HubSpotSDK::Cms::ColorStop],
              side_or_corner: HubSpotSDK::Cms::SideOrCorner
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
