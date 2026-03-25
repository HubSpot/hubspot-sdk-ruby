# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicActionDefinition < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicActionDefinition,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :action_url

        sig do
          returns(
            T::Array[HubspotSDK::Automation::PublicActionFunctionIdentifier]
          )
        end
        attr_accessor :functions

        sig do
          returns(T::Array[HubspotSDK::Automation::PublicInputFieldDefinition])
        end
        attr_accessor :input_fields

        sig do
          returns(T::Hash[Symbol, HubspotSDK::Automation::PublicActionLabels])
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
              T::Array[HubspotSDK::Automation::PublicExecutionTranslationRule]
            )
          )
        end
        attr_reader :execution_rules

        sig do
          params(
            execution_rules:
              T::Array[
                HubspotSDK::Automation::PublicExecutionTranslationRule::OrHash
              ]
          ).void
        end
        attr_writer :execution_rules

        sig do
          returns(
            T.nilable(
              T::Array[
                HubspotSDK::Automation::PublicActionDefinition::InputFieldDependency::Variants
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
                  HubspotSDK::Automation::PublicSingleFieldDependency::OrHash,
                  HubspotSDK::Automation::PublicConditionalSingleFieldDependency::OrHash
                )
              ]
          ).void
        end
        attr_writer :input_field_dependencies

        sig do
          returns(T.nilable(HubspotSDK::Automation::PublicObjectRequestOptions))
        end
        attr_reader :object_request_options

        sig do
          params(
            object_request_options:
              HubspotSDK::Automation::PublicObjectRequestOptions::OrHash
          ).void
        end
        attr_writer :object_request_options

        sig do
          returns(
            T.nilable(T::Array[HubspotSDK::Automation::OutputFieldDefinition])
          )
        end
        attr_reader :output_fields

        sig do
          params(
            output_fields:
              T::Array[HubspotSDK::Automation::OutputFieldDefinition::OrHash]
          ).void
        end
        attr_writer :output_fields

        sig do
          params(
            id: String,
            action_url: String,
            functions:
              T::Array[
                HubspotSDK::Automation::PublicActionFunctionIdentifier::OrHash
              ],
            input_fields:
              T::Array[
                HubspotSDK::Automation::PublicInputFieldDefinition::OrHash
              ],
            labels:
              T::Hash[
                Symbol,
                HubspotSDK::Automation::PublicActionLabels::OrHash
              ],
            object_types: T::Array[String],
            published: T::Boolean,
            revision_id: String,
            archived_at: Integer,
            execution_rules:
              T::Array[
                HubspotSDK::Automation::PublicExecutionTranslationRule::OrHash
              ],
            input_field_dependencies:
              T::Array[
                T.any(
                  HubspotSDK::Automation::PublicSingleFieldDependency::OrHash,
                  HubspotSDK::Automation::PublicConditionalSingleFieldDependency::OrHash
                )
              ],
            object_request_options:
              HubspotSDK::Automation::PublicObjectRequestOptions::OrHash,
            output_fields:
              T::Array[HubspotSDK::Automation::OutputFieldDefinition::OrHash]
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
                  HubspotSDK::Automation::PublicActionFunctionIdentifier
                ],
              input_fields:
                T::Array[HubspotSDK::Automation::PublicInputFieldDefinition],
              labels:
                T::Hash[Symbol, HubspotSDK::Automation::PublicActionLabels],
              object_types: T::Array[String],
              published: T::Boolean,
              revision_id: String,
              archived_at: Integer,
              execution_rules:
                T::Array[
                  HubspotSDK::Automation::PublicExecutionTranslationRule
                ],
              input_field_dependencies:
                T::Array[
                  HubspotSDK::Automation::PublicActionDefinition::InputFieldDependency::Variants
                ],
              object_request_options:
                HubspotSDK::Automation::PublicObjectRequestOptions,
              output_fields:
                T::Array[HubspotSDK::Automation::OutputFieldDefinition]
            }
          )
        end
        def to_hash
        end

        module InputFieldDependency
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Automation::PublicSingleFieldDependency,
                HubspotSDK::Automation::PublicConditionalSingleFieldDependency
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::PublicActionDefinition::InputFieldDependency::Variants
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
