# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIStaticBranchAction < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIStaticBranchAction,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :action_id

        sig do
          returns(
            T.any(
              HubspotSDK::Automation::APIActionDataValue,
              HubspotSDK::Automation::APIObjectPropertyValue,
              HubspotSDK::Automation::APIStaticValue,
              HubspotSDK::Automation::APIRelativeDateTimeValue,
              HubspotSDK::Automation::APITimestampValue,
              HubspotSDK::Automation::APIIncrementValue,
              HubspotSDK::Automation::APIFetchedObjectPropertyValue,
              HubspotSDK::Automation::APIAppendObjectPropertyValue,
              HubspotSDK::Automation::APIStaticAppendValue,
              HubspotSDK::Automation::APIEnrollmentEventPropertyValue
            )
          )
        end
        attr_accessor :input_value

        sig { returns(T::Array[HubspotSDK::Automation::APIStaticBranch]) }
        attr_accessor :static_branches

        sig do
          returns(HubspotSDK::Automation::APIStaticBranchAction::Type::OrSymbol)
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
            input_value:
              T.any(
                HubspotSDK::Automation::APIActionDataValue::OrHash,
                HubspotSDK::Automation::APIObjectPropertyValue::OrHash,
                HubspotSDK::Automation::APIStaticValue::OrHash,
                HubspotSDK::Automation::APIRelativeDateTimeValue::OrHash,
                HubspotSDK::Automation::APITimestampValue::OrHash,
                HubspotSDK::Automation::APIIncrementValue::OrHash,
                HubspotSDK::Automation::APIFetchedObjectPropertyValue::OrHash,
                HubspotSDK::Automation::APIAppendObjectPropertyValue::OrHash,
                HubspotSDK::Automation::APIStaticAppendValue::OrHash,
                HubspotSDK::Automation::APIEnrollmentEventPropertyValue::OrHash
              ),
            static_branches:
              T::Array[HubspotSDK::Automation::APIStaticBranch::OrHash],
            type: HubspotSDK::Automation::APIStaticBranchAction::Type::OrSymbol,
            default_branch: HubspotSDK::Automation::APIConnection::OrHash,
            default_branch_name: String
          ).returns(T.attached_class)
        end
        def self.new(
          action_id:,
          input_value:,
          static_branches:,
          type:,
          default_branch: nil,
          default_branch_name: nil
        )
        end

        sig do
          override.returns(
            {
              action_id: String,
              input_value:
                T.any(
                  HubspotSDK::Automation::APIActionDataValue,
                  HubspotSDK::Automation::APIObjectPropertyValue,
                  HubspotSDK::Automation::APIStaticValue,
                  HubspotSDK::Automation::APIRelativeDateTimeValue,
                  HubspotSDK::Automation::APITimestampValue,
                  HubspotSDK::Automation::APIIncrementValue,
                  HubspotSDK::Automation::APIFetchedObjectPropertyValue,
                  HubspotSDK::Automation::APIAppendObjectPropertyValue,
                  HubspotSDK::Automation::APIStaticAppendValue,
                  HubspotSDK::Automation::APIEnrollmentEventPropertyValue
                ),
              static_branches:
                T::Array[HubspotSDK::Automation::APIStaticBranch],
              type:
                HubspotSDK::Automation::APIStaticBranchAction::Type::OrSymbol,
              default_branch: HubspotSDK::Automation::APIConnection,
              default_branch_name: String
            }
          )
        end
        def to_hash
        end

        module InputValue
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Automation::APIActionDataValue,
                HubspotSDK::Automation::APIObjectPropertyValue,
                HubspotSDK::Automation::APIStaticValue,
                HubspotSDK::Automation::APIRelativeDateTimeValue,
                HubspotSDK::Automation::APITimestampValue,
                HubspotSDK::Automation::APIIncrementValue,
                HubspotSDK::Automation::APIFetchedObjectPropertyValue,
                HubspotSDK::Automation::APIAppendObjectPropertyValue,
                HubspotSDK::Automation::APIStaticAppendValue,
                HubspotSDK::Automation::APIEnrollmentEventPropertyValue
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIStaticBranchAction::InputValue::Variants
              ]
            )
          end
          def self.variants
          end
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Automation::APIStaticBranchAction::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          STATIC_BRANCH =
            T.let(
              :STATIC_BRANCH,
              HubspotSDK::Automation::APIStaticBranchAction::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIStaticBranchAction::Type::TaggedSymbol
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
