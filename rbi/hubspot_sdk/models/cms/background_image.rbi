# typed: strong

module HubspotSDK
  module Models
    module Cms
      class BackgroundImage < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::BackgroundImage,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :background_position

        sig { returns(String) }
        attr_accessor :background_size

        sig { returns(String) }
        attr_accessor :image_url

        sig do
          params(
            background_position: String,
            background_size: String,
            image_url: String
          ).returns(T.attached_class)
        end
        def self.new(background_position:, background_size:, image_url:)
        end

        sig do
          override.returns(
            {
              background_position: String,
              background_size: String,
              image_url: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
