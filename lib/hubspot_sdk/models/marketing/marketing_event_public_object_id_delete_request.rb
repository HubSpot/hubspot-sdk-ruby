# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class MarketingEventPublicObjectIDDeleteRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute object_id_
        #
        #   @return [String]
        required :object_id_, String, api_name: :objectId

        # @!method initialize(object_id_:)
        #   @param object_id_ [String]
      end
    end

    MarketingEventPublicObjectIDDeleteRequest = Marketing::MarketingEventPublicObjectIDDeleteRequest
  end
end
