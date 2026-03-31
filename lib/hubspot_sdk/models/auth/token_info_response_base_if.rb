# frozen_string_literal: true

module HubspotSDK
  module Models
    module Auth
      # @see HubspotSDK::Resources::Auth::OAuth#introspect_token
      module TokenInfoResponseBaseIf
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::Auth::PublicAccessTokenInfoResponse }

        variant -> { HubspotSDK::Auth::PublicRefreshTokenInfoResponse }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::Auth::PublicAccessTokenInfoResponse, HubspotSDK::Models::Auth::PublicRefreshTokenInfoResponse)]
      end
    end
  end
end
