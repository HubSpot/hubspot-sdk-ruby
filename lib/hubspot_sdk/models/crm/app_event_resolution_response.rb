# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Timeline#create_project_type
      class AppEventResolutionResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute developer_qualified_symbol
        #
        #   @return [HubspotSDK::Models::Crm::DeveloperQualifiedSymbol]
        required :developer_qualified_symbol,
                 -> { HubspotSDK::Crm::DeveloperQualifiedSymbol },
                 api_name: :developerQualifiedSymbol

        # @!attribute fully_qualified_name
        #
        #   @return [String]
        required :fully_qualified_name, String, api_name: :fullyQualifiedName

        # @!method initialize(developer_qualified_symbol:, fully_qualified_name:)
        #   @param developer_qualified_symbol [HubspotSDK::Models::Crm::DeveloperQualifiedSymbol]
        #   @param fully_qualified_name [String]
      end
    end
  end
end
