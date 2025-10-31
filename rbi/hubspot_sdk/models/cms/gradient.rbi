# typed: strong

module HubspotSDK
  module Models
    module Cms
      class Gradient < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::Gradient, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(HubspotSDK::Cms::Angle) }
        attr_reader :angle

        sig { params(angle: HubspotSDK::Cms::Angle::OrHash).void }
        attr_writer :angle

        sig { returns(T::Array[HubspotSDK::Cms::ColorStop]) }
        attr_accessor :colors

        sig { returns(HubspotSDK::Cms::SideOrCorner) }
        attr_reader :side_or_corner

        sig do
          params(side_or_corner: HubspotSDK::Cms::SideOrCorner::OrHash).void
        end
        attr_writer :side_or_corner

        sig do
          params(
            angle: HubspotSDK::Cms::Angle::OrHash,
            colors: T::Array[HubspotSDK::Cms::ColorStop::OrHash],
            side_or_corner: HubspotSDK::Cms::SideOrCorner::OrHash
          ).returns(T.attached_class)
        end
        def self.new(angle:, colors:, side_or_corner:)
        end

        sig do
          override.returns(
            {
              angle: HubspotSDK::Cms::Angle,
              colors: T::Array[HubspotSDK::Cms::ColorStop],
              side_or_corner: HubspotSDK::Cms::SideOrCorner
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
