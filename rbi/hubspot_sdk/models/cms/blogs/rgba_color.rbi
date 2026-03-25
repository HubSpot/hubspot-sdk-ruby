# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class RgbaColor < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::RgbaColor,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Alpha.
          sig { returns(Float) }
          attr_accessor :a

          # Blue.
          sig { returns(Integer) }
          attr_accessor :b

          # Green.
          sig { returns(Integer) }
          attr_accessor :g

          # Red.
          sig { returns(Integer) }
          attr_accessor :r

          sig do
            params(a: Float, b: Integer, g: Integer, r: Integer).returns(
              T.attached_class
            )
          end
          def self.new(
            # Alpha.
            a:,
            # Blue.
            b:,
            # Green.
            g:,
            # Red.
            r:
          )
          end

          sig do
            override.returns({ a: Float, b: Integer, g: Integer, r: Integer })
          end
          def to_hash
          end
        end
      end
    end
  end
end
