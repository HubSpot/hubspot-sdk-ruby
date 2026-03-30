# typed: strong

module HubspotSDK
  module Models
    module Cms
      class Padding < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::Padding, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(HubspotSDK::Cms::Size) }
        attr_reader :bottom

        sig { params(bottom: HubspotSDK::Cms::Size::OrHash).void }
        attr_writer :bottom

        sig { returns(HubspotSDK::Cms::Size) }
        attr_reader :left

        sig { params(left: HubspotSDK::Cms::Size::OrHash).void }
        attr_writer :left

        sig { returns(HubspotSDK::Cms::Size) }
        attr_reader :right

        sig { params(right: HubspotSDK::Cms::Size::OrHash).void }
        attr_writer :right

        sig { returns(HubspotSDK::Cms::Size) }
        attr_reader :top

        sig { params(top: HubspotSDK::Cms::Size::OrHash).void }
        attr_writer :top

        sig do
          params(
            bottom: HubspotSDK::Cms::Size::OrHash,
            left: HubspotSDK::Cms::Size::OrHash,
            right: HubspotSDK::Cms::Size::OrHash,
            top: HubspotSDK::Cms::Size::OrHash
          ).returns(T.attached_class)
        end
        def self.new(bottom:, left:, right:, top:)
        end

        sig do
          override.returns(
            {
              bottom: HubspotSDK::Cms::Size,
              left: HubspotSDK::Cms::Size,
              right: HubspotSDK::Cms::Size,
              top: HubspotSDK::Cms::Size
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
