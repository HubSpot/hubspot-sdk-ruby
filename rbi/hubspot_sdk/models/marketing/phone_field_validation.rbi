# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PhoneFieldValidation < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PhoneFieldValidation,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :max_allowed_digits

        sig { returns(Integer) }
        attr_accessor :min_allowed_digits

        # Describes how a phone number should be validated.
        sig do
          params(
            max_allowed_digits: Integer,
            min_allowed_digits: Integer
          ).returns(T.attached_class)
        end
        def self.new(max_allowed_digits:, min_allowed_digits:)
        end

        sig do
          override.returns(
            { max_allowed_digits: Integer, min_allowed_digits: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
