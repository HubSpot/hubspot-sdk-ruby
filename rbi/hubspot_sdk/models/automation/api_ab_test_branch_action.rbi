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

        sig { returns(String) }
        attr_accessor :action_id

        sig { returns(T::Array[HubspotSDK::Automation::APIConnection]) }
        attr_accessor :test_branches

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
        def self.new(action_id:, test_branches:, type:)
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
