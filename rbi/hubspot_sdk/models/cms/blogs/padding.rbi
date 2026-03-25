# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class Padding < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::Padding,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(HubspotSDK::Cms::Blogs::Size) }
          attr_reader :bottom

          sig { params(bottom: HubspotSDK::Cms::Blogs::Size::OrHash).void }
          attr_writer :bottom

          sig { returns(HubspotSDK::Cms::Blogs::Size) }
          attr_reader :left

          sig { params(left: HubspotSDK::Cms::Blogs::Size::OrHash).void }
          attr_writer :left

          sig { returns(HubspotSDK::Cms::Blogs::Size) }
          attr_reader :right

          sig { params(right: HubspotSDK::Cms::Blogs::Size::OrHash).void }
          attr_writer :right

          sig { returns(HubspotSDK::Cms::Blogs::Size) }
          attr_reader :top

          sig { params(top: HubspotSDK::Cms::Blogs::Size::OrHash).void }
          attr_writer :top

          sig do
            params(
              bottom: HubspotSDK::Cms::Blogs::Size::OrHash,
              left: HubspotSDK::Cms::Blogs::Size::OrHash,
              right: HubspotSDK::Cms::Blogs::Size::OrHash,
              top: HubspotSDK::Cms::Blogs::Size::OrHash
            ).returns(T.attached_class)
          end
          def self.new(bottom:, left:, right:, top:)
          end

          sig do
            override.returns(
              {
                bottom: HubspotSDK::Cms::Blogs::Size,
                left: HubspotSDK::Cms::Blogs::Size,
                right: HubspotSDK::Cms::Blogs::Size,
                top: HubspotSDK::Cms::Blogs::Size
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
