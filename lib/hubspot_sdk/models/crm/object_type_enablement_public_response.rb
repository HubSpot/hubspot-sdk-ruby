# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class ObjectTypeEnablementPublicResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute enablement
        #
        #   @return [Boolean]
        required :enablement, HubspotSDK::Internal::Type::Boolean

        # @!method initialize(enablement:)
        #   @param enablement [Boolean]
      end
    end
  end
end
