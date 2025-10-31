# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIListBranchAction < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIListBranchAction,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The ID for this action.
        sig { returns(String) }
        attr_accessor :action_id

        sig { returns(T::Array[HubspotSDK::Automation::APIListBranch]) }
        attr_accessor :list_branches

        # The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH",
        # "AB_TEST_BRANCH", "CUSTOM_CODE", "WEBHOOK", or "SINGLE_CONNECTION"
        sig do
          returns(HubspotSDK::Automation::APIListBranchAction::Type::OrSymbol)
        end
        attr_accessor :type

        sig { returns(T.nilable(HubspotSDK::Automation::APIConnection)) }
        attr_reader :default_branch

        sig do
          params(
            default_branch: HubspotSDK::Automation::APIConnection::OrHash
          ).void
        end
        attr_writer :default_branch

        # The name of the default branch, the branch that gets executed if the object does
        # not match any of the `listBranch` criteria.
        sig { returns(T.nilable(String)) }
        attr_reader :default_branch_name

        sig { params(default_branch_name: String).void }
        attr_writer :default_branch_name

        sig do
          params(
            action_id: String,
            list_branches:
              T::Array[HubspotSDK::Automation::APIListBranch::OrHash],
            type: HubspotSDK::Automation::APIListBranchAction::Type::OrSymbol,
            default_branch: HubspotSDK::Automation::APIConnection::OrHash,
            default_branch_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The ID for this action.
          action_id:,
          list_branches:,
          # The type of action this is, can be: "STATIC_BRANCH", "LIST_BRANCH",
          # "AB_TEST_BRANCH", "CUSTOM_CODE", "WEBHOOK", or "SINGLE_CONNECTION"
          type:,
          default_branch: nil,
          # The name of the default branch, the branch that gets executed if the object does
          # not match any of the `listBranch` criteria.
          default_branch_name: nil
        )
        end

        sig do
          override.returns(
            {
              action_id: String,
              list_branches: T::Array[HubspotSDK::Automation::APIListBranch],
              type: HubspotSDK::Automation::APIListBranchAction::Type::OrSymbol,
              default_branch: HubspotSDK::Automation::APIConnection,
              default_branch_name: String
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
              T.all(Symbol, HubspotSDK::Automation::APIListBranchAction::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIST_BRANCH =
            T.let(
              :LIST_BRANCH,
              HubspotSDK::Automation::APIListBranchAction::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIListBranchAction::Type::TaggedSymbol
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
