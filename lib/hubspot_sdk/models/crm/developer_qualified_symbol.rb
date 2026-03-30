# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class DeveloperQualifiedSymbol < HubspotSDK::Internal::Type::BaseModel
        # @!attribute developer_symbol
        #
        #   @return [String]
        required :developer_symbol, String, api_name: :developerSymbol

        # @!attribute project_name
        #
        #   @return [String]
        required :project_name, String, api_name: :projectName

        # @!method initialize(developer_symbol:, project_name:)
        #   @param developer_symbol [String]
        #   @param project_name [String]
      end
    end
  end
end
