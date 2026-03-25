# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicCampaignDeleteInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the campaign to be deleted.
        #
        #   @return [String]
        required :id, String

        # @!method initialize(id:)
        #   @param id [String] The unique identifier for the campaign to be deleted.
      end
    end
  end
end
