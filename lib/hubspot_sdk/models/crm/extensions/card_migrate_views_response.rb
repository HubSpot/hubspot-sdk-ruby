# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        # @see HubspotSDK::Resources::Crm::Extensions::CardsDev#migrate_views
        class CardMigrateViewsResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute message
          #
          #   @return [String]
          required :message, String

          # @!method initialize(message:)
          #   @param message [String]
        end
      end
    end
  end
end
