# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class PublicActionDefinition < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::PublicActionDefinition,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :action_url

        sig do
          returns(
            T::Array[HubSpotSDK::Automation::PublicActionFunctionIdentifier]
          )
        end
        attr_accessor :functions

        sig do
          returns(T::Array[HubSpotSDK::Automation::PublicInputFieldDefinition])
        end
        attr_accessor :input_fields

        sig do
          returns(T::Hash[Symbol, HubSpotSDK::Automation::PublicActionLabels])
        end
        attr_accessor :labels

        sig { returns(T::Array[String]) }
        attr_accessor :object_types

        sig { returns(T::Boolean) }
        attr_accessor :published

        sig { returns(String) }
        attr_accessor :revision_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :archived_at

        sig { params(archived_at: Integer).void }
        attr_writer :archived_at

        sig do
          returns(
            T.nilable(
              T::Array[HubSpotSDK::Automation::PublicExecutionTranslationRule]
            )
          )
        end
        attr_reader :execution_rules

        sig do
          params(
            execution_rules:
              T::Array[
                HubSpotSDK::Automation::PublicExecutionTranslationRule::OrHash
              ]
          ).void
        end
        attr_writer :execution_rules

        sig do
          returns(
            T.nilable(
              T::Array[
                HubSpotSDK::Automation::PublicActionDefinition::InputFieldDependency::Variants
              ]
            )
          )
        end
        attr_reader :input_field_dependencies

        sig do
          params(
            input_field_dependencies:
              T::Array[
                T.any(
                  HubSpotSDK::Automation::PublicSingleFieldDependency::OrHash,
                  HubSpotSDK::Automation::PublicConditionalSingleFieldDependency::OrHash
                )
              ]
          ).void
        end
        attr_writer :input_field_dependencies

        sig do
          returns(T.nilable(HubSpotSDK::Automation::PublicObjectRequestOptions))
        end
        attr_reader :object_request_options

        sig do
          params(
            object_request_options:
              HubSpotSDK::Automation::PublicObjectRequestOptions::OrHash
          ).void
        end
        attr_writer :object_request_options

        sig do
          returns(
            T.nilable(T::Array[HubSpotSDK::Automation::OutputFieldDefinition])
          )
        end
        attr_reader :output_fields

        sig do
          params(
            output_fields:
              T::Array[HubSpotSDK::Automation::OutputFieldDefinition::OrHash]
          ).void
        end
        attr_writer :output_fields

        sig do
          params(
            id: String,
            action_url: String,
            functions:
              T::Array[
                HubSpotSDK::Automation::PublicActionFunctionIdentifier::OrHash
              ],
            input_fields:
              T::Array[
                HubSpotSDK::Automation::PublicInputFieldDefinition::OrHash
              ],
            labels:
              T::Hash[
                Symbol,
                HubSpotSDK::Automation::PublicActionLabels::OrHash
              ],
            object_types: T::Array[String],
            published: T::Boolean,
            revision_id: String,
            archived_at: Integer,
            execution_rules:
              T::Array[
                HubSpotSDK::Automation::PublicExecutionTranslationRule::OrHash
              ],
            input_field_dependencies:
              T::Array[
                T.any(
                  HubSpotSDK::Automation::PublicSingleFieldDependency::OrHash,
                  HubSpotSDK::Automation::PublicConditionalSingleFieldDependency::OrHash
                )
              ],
            object_request_options:
              HubSpotSDK::Automation::PublicObjectRequestOptions::OrHash,
            output_fields:
              T::Array[HubSpotSDK::Automation::OutputFieldDefinition::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          action_url:,
          functions:,
          input_fields:,
          labels:,
          object_types:,
          published:,
          revision_id:,
          archived_at: nil,
          execution_rules: nil,
          input_field_dependencies: nil,
          object_request_options: nil,
          output_fields: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              action_url: String,
              functions:
                T::Array[
                  HubSpotSDK::Automation::PublicActionFunctionIdentifier
                ],
              input_fields:
                T::Array[HubSpotSDK::Automation::PublicInputFieldDefinition],
              labels:
                T::Hash[Symbol, HubSpotSDK::Automation::PublicActionLabels],
              object_types: T::Array[String],
              published: T::Boolean,
              revision_id: String,
              archived_at: Integer,
              execution_rules:
                T::Array[
                  HubSpotSDK::Automation::PublicExecutionTranslationRule
                ],
              input_field_dependencies:
                T::Array[
                  HubSpotSDK::Automation::PublicActionDefinition::InputFieldDependency::Variants
                ],
              object_request_options:
                HubSpotSDK::Automation::PublicObjectRequestOptions,
              output_fields:
                T::Array[HubSpotSDK::Automation::OutputFieldDefinition]
            }
          )
        end
        def to_hash
        end

        module InputFieldDependency
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Automation::PublicSingleFieldDependency,
                HubSpotSDK::Automation::PublicConditionalSingleFieldDependency
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::PublicActionDefinition::InputFieldDependency::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
