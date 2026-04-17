# typed: strong

module HubSpotSDK
  module Models
    module Auth
      class TokenInfoResponseBaseIf < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Auth::TokenInfoResponseBaseIf,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :active

        sig { params(active: T::Boolean).returns(T.attached_class) }
        def self.new(active:)
        end

        sig { override.returns({ active: T::Boolean }) }
        def to_hash
        end
      end
    end
  end
end
