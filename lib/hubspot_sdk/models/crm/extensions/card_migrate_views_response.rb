# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        # @see HubSpotSDK::Resources::Crm::Extensions::CardsDev#migrate_views
        class CardMigrateViewsResponse < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute message
          #   A human readable message describing the progress of the migration.
          #
          #   @return [String]
          required :message, String

          # @!attribute ended_at
          #   The timestamp for when the migration ended.
          #
          #   @return [Integer, nil]
          optional :ended_at, Integer, api_name: :endedAt

          # @!attribute remaining_portal_count
          #   The number of portals that remain to be swapped from the Legacy CRM Card to the
          #   App Card
          #
          #   @return [Integer, nil]
          optional :remaining_portal_count, Integer, api_name: :remainingPortalCount

          # @!attribute started_at
          #   The timestamp for when the migration started.
          #
          #   @return [Integer, nil]
          optional :started_at, Integer, api_name: :startedAt

          # @!attribute total_portal_count
          #   The total number of portals that have access to the Legacy CRM Card
          #
          #   @return [Integer, nil]
          optional :total_portal_count, Integer, api_name: :totalPortalCount

          # @!method initialize(message:, ended_at: nil, remaining_portal_count: nil, started_at: nil, total_portal_count: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Crm::Extensions::CardMigrateViewsResponse} for more
          #   details.
          #
          #   @param message [String] A human readable message describing the progress of the migration.
          #
          #   @param ended_at [Integer] The timestamp for when the migration ended.
          #
          #   @param remaining_portal_count [Integer] The number of portals that remain to be swapped from the Legacy CRM Card to the
          #
          #   @param started_at [Integer] The timestamp for when the migration started.
          #
          #   @param total_portal_count [Integer] The total number of portals that have access to the Legacy CRM Card
        end
      end
    end
  end
end
