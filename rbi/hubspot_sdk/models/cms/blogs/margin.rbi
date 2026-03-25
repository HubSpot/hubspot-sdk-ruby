# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class Margin < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::Margin,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(HubspotSDK::Cms::Blogs::Size) }
          attr_reader :bottom

          sig { params(bottom: HubspotSDK::Cms::Blogs::Size::OrHash).void }
          attr_writer :bottom

          sig { returns(HubspotSDK::Cms::Blogs::Size) }
          attr_reader :top

          sig { params(top: HubspotSDK::Cms::Blogs::Size::OrHash).void }
          attr_writer :top

          sig do
            params(
              bottom: HubspotSDK::Cms::Blogs::Size::OrHash,
              top: HubspotSDK::Cms::Blogs::Size::OrHash
            ).returns(T.attached_class)
          end
          def self.new(bottom:, top:)
          end

          sig do
            override.returns(
              {
                bottom: HubspotSDK::Cms::Blogs::Size,
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
