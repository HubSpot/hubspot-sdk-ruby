# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Auth
      # @see HubSpotSDK::Resources::Auth::OAuth#introspect_token
      class TokenInfoResponseBaseIf < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute active
        #
        #   @return [Boolean]
        required :active, HubSpotSDK::Internal::Type::Boolean

        # @!method initialize(active:)
        #   @param active [Boolean]
      end
    end
  end
end
