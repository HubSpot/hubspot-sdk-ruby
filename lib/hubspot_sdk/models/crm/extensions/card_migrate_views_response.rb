# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        # @see HubSpotSDK::Resources::Crm::Extensions::CardsDev#migrate_views
        class CardMigrateViewsResponse < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute message
          #   A human readable message describing the error along with remediation steps where
          #   appropriate
          #
          #   @return [String]
          required :message, String

          # @!method initialize(message:)
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Crm::Extensions::CardMigrateViewsResponse} for more
          #   details.
          #
          #   @param message [String] A human readable message describing the error along with remediation steps where
        end
      end
    end
  end
end
