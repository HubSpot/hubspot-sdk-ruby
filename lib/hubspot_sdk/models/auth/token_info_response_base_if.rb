# frozen_string_literal: true

module HubspotSDK
  module Models
    module Auth
      # @see HubspotSDK::Resources::Auth::OAuth#introspect_token
      class TokenInfoResponseBaseIf < HubspotSDK::Internal::Type::BaseModel
        # @!attribute active
        #
        #   @return [Boolean]
        required :active, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(active:)
        #   @param active [Boolean]
      end
    end
  end
end
