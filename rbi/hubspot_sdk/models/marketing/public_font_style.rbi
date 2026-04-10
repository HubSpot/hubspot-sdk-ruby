# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class PublicFontStyle < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::PublicFontStyle,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :bold

        sig { params(bold: T::Boolean).void }
        attr_writer :bold

        sig { returns(T.nilable(String)) }
        attr_reader :color

        sig { params(color: String).void }
        attr_writer :color

        sig { returns(T.nilable(String)) }
        attr_reader :font

        sig { params(font: String).void }
        attr_writer :font

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :italic

        sig { params(italic: T::Boolean).void }
        attr_writer :italic

        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :underline

        sig { params(underline: T::Boolean).void }
        attr_writer :underline

        sig do
          params(
            bold: T::Boolean,
            color: String,
            font: String,
            italic: T::Boolean,
            size: Integer,
            underline: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          bold: nil,
          color: nil,
          font: nil,
          italic: nil,
          size: nil,
          underline: nil
        )
        end

        sig do
          override.returns(
            {
              bold: T::Boolean,
              color: String,
              font: String,
              italic: T::Boolean,
              size: Integer,
              underline: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
