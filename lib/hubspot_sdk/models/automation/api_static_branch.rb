# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIStaticBranch < HubspotSDK::Internal::Type::BaseModel
        # @!attribute branch_value
        #
        #   @return [String]
        required :branch_value, String, api_name: :branchValue

        # @!attribute connection
        #
        #   @return [HubspotSDK::Models::Automation::APIConnection, nil]
        optional :connection, -> { HubspotSDK::Automation::APIConnection }

        # @!method initialize(branch_value:, connection: nil)
        #   @param branch_value [String]
        #   @param connection [HubspotSDK::Models::Automation::APIConnection]
      end
    end
  end
end
