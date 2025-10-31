# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIStaticBranch < HubspotSDK::Internal::Type::BaseModel
        # @!attribute branch_value
        #   If value to check for. If the value of the `inputValue` matches this
        #   `branchValue` than this `connection` will get traversed.
        #
        #   @return [String]
        required :branch_value, String, api_name: :branchValue

        # @!attribute connection
        #
        #   @return [HubspotSDK::Models::Automation::APIConnection, nil]
        optional :connection, -> { HubspotSDK::Automation::APIConnection }

        # @!method initialize(branch_value:, connection: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::APIStaticBranch} for more details.
        #
        #   @param branch_value [String] If value to check for. If the value of the `inputValue` matches this `branchValu
        #
        #   @param connection [HubspotSDK::Models::Automation::APIConnection]
      end
    end
  end
end
