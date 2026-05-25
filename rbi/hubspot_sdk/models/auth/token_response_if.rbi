# typed: strong

module HubSpotSDK
  module Models
    module Auth
      module TokenResponseIf
        extend HubSpotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubSpotSDK::Auth::AccessTokenResponse,
              HubSpotSDK::Auth::ClientCredentialsTokenResponse
            )
          end

        sig do
          override.returns(
            T::Array[HubSpotSDK::Auth::TokenResponseIf::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
