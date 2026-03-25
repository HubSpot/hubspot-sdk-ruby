# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class MarketingEventPublicObjectIDDeleteRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute object_id_
        #   The internal ID of the marketing event in HubSpot
        #
        #   @return [String]
        required :object_id_, String, api_name: :objectId

        # @!method initialize(object_id_:)
        #   @param object_id_ [String] The internal ID of the marketing event in HubSpot
      end
    end

    MarketingEventPublicObjectIDDeleteRequest = Marketing::MarketingEventPublicObjectIDDeleteRequest
  end
end
