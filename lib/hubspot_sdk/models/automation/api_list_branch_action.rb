# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIListBranchAction < HubspotSDK::Internal::Type::BaseModel
        # @!attribute action_id
        #
        #   @return [String]
        required :action_id, String, api_name: :actionId

        # @!attribute list_branches
        #
        #   @return [Array<HubspotSDK::Models::Automation::APIListBranch>]
        required :list_branches,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::APIListBranch] },
                 api_name: :listBranches

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIListBranchAction::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIListBranchAction::Type }

        # @!attribute default_branch
        #
        #   @return [HubspotSDK::Models::Automation::APIConnection, nil]
        optional :default_branch, -> { HubspotSDK::Automation::APIConnection }, api_name: :defaultBranch

        # @!attribute default_branch_name
        #
        #   @return [String, nil]
        optional :default_branch_name, String, api_name: :defaultBranchName

        # @!method initialize(action_id:, list_branches:, type:, default_branch: nil, default_branch_name: nil)
        #   @param action_id [String]
        #   @param list_branches [Array<HubspotSDK::Models::Automation::APIListBranch>]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIListBranchAction::Type]
        #   @param default_branch [HubspotSDK::Models::Automation::APIConnection]
        #   @param default_branch_name [String]

        # @see HubspotSDK::Models::Automation::APIListBranchAction#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          LIST_BRANCH = :LIST_BRANCH

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
