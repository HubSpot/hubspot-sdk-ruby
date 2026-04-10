# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class PublicEmailRecipients < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::PublicEmailRecipients,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Excluded IDs.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :exclude

        sig { params(exclude: T::Array[String]).void }
        attr_writer :exclude

        # Included IDs.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :include

        sig { params(include: T::Array[String]).void }
        attr_writer :include

        sig do
          params(exclude: T::Array[String], include: T::Array[String]).returns(
            T.attached_class
          )
        end
        def self.new(
          # Excluded IDs.
          exclude: nil,
          # Included IDs.
          include: nil
        )
        end

        sig do
          override.returns(
            { exclude: T::Array[String], include: T::Array[String] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
