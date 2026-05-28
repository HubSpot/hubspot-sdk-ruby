# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Auth
      # @see HubSpotSDK::Resources::Auth::OAuth#create_token
      module TokenResponseIf
        extend HubSpotSDK::Internal::Type::Union

        discriminator :token_use

        variant :access_token, -> { HubSpotSDK::Auth::AccessTokenResponse }

        variant :client_credentials, -> { HubSpotSDK::Auth::ClientCredentialsTokenResponse }

        # @!method self.variants
        #   @return [Array(HubSpotSDK::Models::Auth::AccessTokenResponse, HubSpotSDK::Models::Auth::ClientCredentialsTokenResponse)]
      end
    end
  end
end
