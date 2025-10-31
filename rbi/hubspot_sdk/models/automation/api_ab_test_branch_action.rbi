# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIAbTestBranchAction < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIAbTestBranchAction,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The ID for this action.
        sig { returns(String) }
        attr_accessor :action_id

        sig { returns(T::Array[HubspotSDK::Automation::APIConnection]) }
        attr_accessor :test_branches

        # The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH",
        # "AB_TEST_BRANCH", "CUSTOM_CODE", "WEBHOOK", or "SINGLE_CONNECTION"
        sig do
          returns(HubspotSDK::Automation::APIAbTestBranchAction::Type::OrSymbol)
        end
        attr_accessor :type

        sig do
          params(
            action_id: String,
            test_branches:
              T::Array[HubspotSDK::Automation::APIConnection::OrHash],
            type: HubspotSDK::Automation::APIAbTestBranchAction::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID for this action.
          action_id:,
          test_branches:,
          # The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH",
          # "AB_TEST_BRANCH", "CUSTOM_CODE", "WEBHOOK", or "SINGLE_CONNECTION"
          type:
        )
        end

        sig do
          override.returns(
            {
              action_id: String,
              test_branches: T::Array[HubspotSDK::Automation::APIConnection],
              type:
                HubspotSDK::Automation::APIAbTestBranchAction::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH",
        # "AB_TEST_BRANCH", "CUSTOM_CODE", "WEBHOOK", or "SINGLE_CONNECTION"
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::APIAbTestBranchAction::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AB_TEST_BRANCH =
            T.let(
              :AB_TEST_BRANCH,
              HubspotSDK::Automation::APIAbTestBranchAction::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIAbTestBranchAction::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
