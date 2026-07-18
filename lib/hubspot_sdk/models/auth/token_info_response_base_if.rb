# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Auth
      # @see HubSpotSDK::Resources::Auth::OAuth#introspect_token
      module TokenInfoResponseBaseIf
        extend HubSpotSDK::Internal::Type::Union

        discriminator :token_use

        variant :access_token, -> { HubSpotSDK::Auth::PublicAccessTokenInfoResponse }

        variant :refresh_token, -> { HubSpotSDK::Auth::PublicRefreshTokenInfoResponse }

        # @!method self.variants
        #   @return [Array(HubSpotSDK::Models::Auth::PublicAccessTokenInfoResponse, HubSpotSDK::Models::Auth::PublicRefreshTokenInfoResponse)]
      end
    end
  end
end
