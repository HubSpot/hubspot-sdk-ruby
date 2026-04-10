# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class Margin < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubSpotSDK::Cms::Margin, HubSpotSDK::Internal::AnyHash)
          end

        sig { returns(HubSpotSDK::Cms::Size) }
        attr_reader :bottom

        sig { params(bottom: HubSpotSDK::Cms::Size::OrHash).void }
        attr_writer :bottom

        sig { returns(HubSpotSDK::Cms::Size) }
        attr_reader :top

        sig { params(top: HubSpotSDK::Cms::Size::OrHash).void }
        attr_writer :top

        sig do
          params(
            bottom: HubSpotSDK::Cms::Size::OrHash,
            top: HubSpotSDK::Cms::Size::OrHash
          ).returns(T.attached_class)
        end
        def self.new(bottom:, top:)
        end

        sig do
          override.returns(
            { bottom: HubSpotSDK::Cms::Size, top: HubSpotSDK::Cms::Size }
          )
        end
        def to_hash
        end
      end
    end
  end
end
