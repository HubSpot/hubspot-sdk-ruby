# typed: strong

module HubSpotSDK
  module Models
    module Auth
      module TokenInfoResponseBaseIf
        extend HubSpotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubSpotSDK::Auth::PublicAccessTokenInfoResponse,
              HubSpotSDK::Auth::PublicRefreshTokenInfoResponse
            )
          end

        sig do
          override.returns(
            T::Array[HubSpotSDK::Auth::TokenInfoResponseBaseIf::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
