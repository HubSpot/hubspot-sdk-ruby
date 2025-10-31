# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIStaticBranchAction < HubspotSDK::Internal::Type::BaseModel
        # @!attribute action_id
        #
        #   @return [String]
        required :action_id, String, api_name: :actionId

        # @!attribute input_value
        #
        #   @return [HubspotSDK::Models::Automation::APIActionDataValue, HubspotSDK::Models::Automation::APIObjectPropertyValue, HubspotSDK::Models::Automation::APIStaticValue, HubspotSDK::Models::Automation::APIRelativeDateTimeValue, HubspotSDK::Models::Automation::APITimestampValue, HubspotSDK::Models::Automation::APIIncrementValue, HubspotSDK::Models::Automation::APIFetchedObjectPropertyValue, HubspotSDK::Models::Automation::APIAppendObjectPropertyValue, HubspotSDK::Models::Automation::APIStaticAppendValue, HubspotSDK::Models::Automation::APIEnrollmentEventPropertyValue]
        required :input_value,
                 union: -> { HubspotSDK::Automation::APIStaticBranchAction::InputValue },
                 api_name: :inputValue

        # @!attribute static_branches
        #
        #   @return [Array<HubspotSDK::Models::Automation::APIStaticBranch>]
        required :static_branches,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::APIStaticBranch] },
                 api_name: :staticBranches

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIStaticBranchAction::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIStaticBranchAction::Type }

        # @!attribute default_branch
        #
        #   @return [HubspotSDK::Models::Automation::APIConnection, nil]
        optional :default_branch, -> { HubspotSDK::Automation::APIConnection }, api_name: :defaultBranch

        # @!attribute default_branch_name
        #
        #   @return [String, nil]
        optional :default_branch_name, String, api_name: :defaultBranchName

        # @!method initialize(action_id:, input_value:, static_branches:, type:, default_branch: nil, default_branch_name: nil)
        #   @param action_id [String]
        #   @param input_value [HubspotSDK::Models::Automation::APIActionDataValue, HubspotSDK::Models::Automation::APIObjectPropertyValue, HubspotSDK::Models::Automation::APIStaticValue, HubspotSDK::Models::Automation::APIRelativeDateTimeValue, HubspotSDK::Models::Automation::APITimestampValue, HubspotSDK::Models::Automation::APIIncrementValue, HubspotSDK::Models::Automation::APIFetchedObjectPropertyValue, HubspotSDK::Models::Automation::APIAppendObjectPropertyValue, HubspotSDK::Models::Automation::APIStaticAppendValue, HubspotSDK::Models::Automation::APIEnrollmentEventPropertyValue]
        #   @param static_branches [Array<HubspotSDK::Models::Automation::APIStaticBranch>]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIStaticBranchAction::Type]
        #   @param default_branch [HubspotSDK::Models::Automation::APIConnection]
        #   @param default_branch_name [String]

        # @see HubspotSDK::Models::Automation::APIStaticBranchAction#input_value
        module InputValue
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Automation::APIActionDataValue }

          variant -> { HubspotSDK::Automation::APIObjectPropertyValue }

          variant -> { HubspotSDK::Automation::APIStaticValue }

          variant -> { HubspotSDK::Automation::APIRelativeDateTimeValue }

          variant -> { HubspotSDK::Automation::APITimestampValue }

          variant -> { HubspotSDK::Automation::APIIncrementValue }

          variant -> { HubspotSDK::Automation::APIFetchedObjectPropertyValue }

          variant -> { HubspotSDK::Automation::APIAppendObjectPropertyValue }

          variant -> { HubspotSDK::Automation::APIStaticAppendValue }

          variant -> { HubspotSDK::Automation::APIEnrollmentEventPropertyValue }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Automation::APIActionDataValue, HubspotSDK::Models::Automation::APIObjectPropertyValue, HubspotSDK::Models::Automation::APIStaticValue, HubspotSDK::Models::Automation::APIRelativeDateTimeValue, HubspotSDK::Models::Automation::APITimestampValue, HubspotSDK::Models::Automation::APIIncrementValue, HubspotSDK::Models::Automation::APIFetchedObjectPropertyValue, HubspotSDK::Models::Automation::APIAppendObjectPropertyValue, HubspotSDK::Models::Automation::APIStaticAppendValue, HubspotSDK::Models::Automation::APIEnrollmentEventPropertyValue)]
        end

        # @see HubspotSDK::Models::Automation::APIStaticBranchAction#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          STATIC_BRANCH = :STATIC_BRANCH

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
