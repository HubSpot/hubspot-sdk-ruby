# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Auth
      # @see HubSpotSDK::Resources::Auth::OAuth#create_token
      module TokenResponseIf
        extend HubSpotSDK::Internal::Type::Union

        variant -> { HubSpotSDK::Auth::AccessTokenResponse }

        variant -> { HubSpotSDK::Auth::ClientCredentialsTokenResponse }

        # @!method self.variants
        #   @return [Array(HubSpotSDK::Models::Auth::AccessTokenResponse, HubSpotSDK::Models::Auth::ClientCredentialsTokenResponse)]
      end
    end
  end
end
