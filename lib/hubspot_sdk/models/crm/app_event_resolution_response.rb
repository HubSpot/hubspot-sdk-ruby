# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Timeline#create_project_type
      class AppEventResolutionResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute developer_qualified_symbol
        #
        #   @return [HubSpotSDK::Models::Crm::DeveloperQualifiedSymbol]
        required :developer_qualified_symbol,
                 -> { HubSpotSDK::Crm::DeveloperQualifiedSymbol },
                 api_name: :developerQualifiedSymbol

        # @!attribute fully_qualified_name
        #
        #   @return [String]
        required :fully_qualified_name, String, api_name: :fullyQualifiedName

        # @!method initialize(developer_qualified_symbol:, fully_qualified_name:)
        #   @param developer_qualified_symbol [HubSpotSDK::Models::Crm::DeveloperQualifiedSymbol]
        #   @param fully_qualified_name [String]
      end
    end
  end
end
