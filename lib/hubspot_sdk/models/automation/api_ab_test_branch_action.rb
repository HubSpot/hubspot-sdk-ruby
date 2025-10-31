# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIAbTestBranchAction < HubspotSDK::Internal::Type::BaseModel
        # @!attribute action_id
        #
        #   @return [String]
        required :action_id, String, api_name: :actionId

        # @!attribute test_branches
        #
        #   @return [Array<HubspotSDK::Models::Automation::APIConnection>]
        required :test_branches,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::APIConnection] },
                 api_name: :testBranches

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIAbTestBranchAction::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIAbTestBranchAction::Type }

        # @!method initialize(action_id:, test_branches:, type:)
        #   @param action_id [String]
        #   @param test_branches [Array<HubspotSDK::Models::Automation::APIConnection>]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIAbTestBranchAction::Type]

        # @see HubspotSDK::Models::Automation::APIAbTestBranchAction#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          AB_TEST_BRANCH = :AB_TEST_BRANCH

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
