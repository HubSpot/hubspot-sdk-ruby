# typed: strong

module HubspotSDK
  module Models
    module Auth
      module TokenInfoResponseBaseIf
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::Auth::PublicAccessTokenInfoResponse,
              HubspotSDK::Auth::PublicRefreshTokenInfoResponse
            )
          end

        sig do
          override.returns(
            T::Array[HubspotSDK::Auth::TokenInfoResponseBaseIf::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
