# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class BackgroundImage < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::BackgroundImage,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Defines the position of the background image.
          sig { returns(String) }
          attr_accessor :background_position

          # Specifies the size of the background image.
          sig { returns(String) }
          attr_accessor :background_size

          # The URL of the background image.
          sig { returns(String) }
          attr_accessor :image_url

          sig do
            params(
              background_position: String,
              background_size: String,
              image_url: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Defines the position of the background image.
            background_position:,
            # Specifies the size of the background image.
            background_size:,
            # The URL of the background image.
            image_url:
          )
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
end
