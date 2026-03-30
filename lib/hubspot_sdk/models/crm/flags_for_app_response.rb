# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::FeatureFlags#list_all
      class FlagsForAppResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute flags_for_app
        #
        #   @return [Array<String>]
        required :flags_for_app, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :flagsForApp

        # @!method initialize(flags_for_app:)
        #   @param flags_for_app [Array<String>]
      end
    end
  end
end
