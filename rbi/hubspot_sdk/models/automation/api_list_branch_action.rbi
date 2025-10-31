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

        sig { returns(String) }
        attr_accessor :action_id

        sig { returns(T::Array[HubspotSDK::Automation::APIListBranch]) }
        attr_accessor :list_branches

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
          action_id:,
          list_branches:,
          type:,
          default_branch: nil,
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
