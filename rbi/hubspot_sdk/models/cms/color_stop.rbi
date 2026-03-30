# typed: strong

module HubspotSDK
  module Models
    module Cms
      class ColorStop < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::ColorStop, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(HubspotSDK::Cms::RgbaColor) }
        attr_reader :color

        sig { params(color: HubspotSDK::Cms::RgbaColor::OrHash).void }
        attr_writer :color

        sig do
          params(color: HubspotSDK::Cms::RgbaColor::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(color:)
        end

        sig { override.returns({ color: HubspotSDK::Cms::RgbaColor }) }
        def to_hash
        end
      end
    end
  end
end
