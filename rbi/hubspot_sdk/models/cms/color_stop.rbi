# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class ColorStop < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::ColorStop, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(HubSpotSDK::Cms::RgbaColor) }
        attr_reader :color

        sig { params(color: HubSpotSDK::Cms::RgbaColor::OrHash).void }
        attr_writer :color

        sig do
          params(color: HubSpotSDK::Cms::RgbaColor::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(color:)
        end

        sig { override.returns({ color: HubSpotSDK::Cms::RgbaColor }) }
        def to_hash
        end
      end
    end
  end
end
