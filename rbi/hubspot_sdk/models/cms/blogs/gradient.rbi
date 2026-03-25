# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class Gradient < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::Gradient,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(HubspotSDK::Cms::Blogs::Angle) }
          attr_reader :angle

          sig { params(angle: HubspotSDK::Cms::Blogs::Angle::OrHash).void }
          attr_writer :angle

          sig { returns(T::Array[HubspotSDK::Cms::Blogs::ColorStop]) }
          attr_accessor :colors

          sig { returns(HubspotSDK::Cms::Blogs::SideOrCorner) }
          attr_reader :side_or_corner

          sig do
            params(
              side_or_corner: HubspotSDK::Cms::Blogs::SideOrCorner::OrHash
            ).void
          end
          attr_writer :side_or_corner

          sig do
            params(
              angle: HubspotSDK::Cms::Blogs::Angle::OrHash,
              colors: T::Array[HubspotSDK::Cms::Blogs::ColorStop::OrHash],
              side_or_corner: HubspotSDK::Cms::Blogs::SideOrCorner::OrHash
            ).returns(T.attached_class)
          end
          def self.new(angle:, colors:, side_or_corner:)
          end

          sig do
            override.returns(
              {
                angle: HubspotSDK::Cms::Blogs::Angle,
                colors: T::Array[HubspotSDK::Cms::Blogs::ColorStop],
                side_or_corner: HubspotSDK::Cms::Blogs::SideOrCorner
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
