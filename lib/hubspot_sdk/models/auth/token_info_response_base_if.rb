# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Auth
      # @see HubSpotSDK::Resources::Auth::OAuth#introspect_token
      module TokenInfoResponseBaseIf
        extend HubSpotSDK::Internal::Type::Union

        variant -> { HubSpotSDK::Auth::PublicAccessTokenInfoResponse }

        variant -> { HubSpotSDK::Auth::PublicRefreshTokenInfoResponse }

        # @!method self.variants
        #   @return [Array(HubSpotSDK::Models::Auth::PublicAccessTokenInfoResponse, HubSpotSDK::Models::Auth::PublicRefreshTokenInfoResponse)]
      end
    end
  end
end
