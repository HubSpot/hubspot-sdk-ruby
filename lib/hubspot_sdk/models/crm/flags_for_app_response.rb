# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::FeatureFlags#list_all
      class FlagsForAppResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute flags_for_app
        #
        #   @return [Array<String>]
        required :flags_for_app, HubSpotSDK::Internal::Type::ArrayOf[String], api_name: :flagsForApp

        # @!method initialize(flags_for_app:)
        #   @param flags_for_app [Array<String>]
      end
    end
  end
end
