# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class ColorStop < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::ColorStop,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(HubspotSDK::Cms::Blogs::RgbaColor) }
          attr_reader :color

          sig { params(color: HubspotSDK::Cms::Blogs::RgbaColor::OrHash).void }
          attr_writer :color

          sig do
            params(color: HubspotSDK::Cms::Blogs::RgbaColor::OrHash).returns(
              T.attached_class
            )
          end
          def self.new(color:)
          end

          sig { override.returns({ color: HubspotSDK::Cms::Blogs::RgbaColor }) }
          def to_hash
          end
        end
      end
    end
  end
end
