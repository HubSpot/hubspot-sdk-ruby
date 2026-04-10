# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class PublicActionDefinitionPatch < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::PublicActionDefinitionPatch,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The URL endpoint where the action is executed.
        sig { returns(T.nilable(String)) }
        attr_reader :action_url

        sig { params(action_url: String).void }
        attr_writer :action_url

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
                T.any(
                  HubSpotSDK::Automation::PublicSingleFieldDependency,
                  HubSpotSDK::Automation::PublicConditionalSingleFieldDependency
                )
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
          returns(
            T.nilable(
              T::Array[HubSpotSDK::Automation::PublicInputFieldDefinition]
            )
          )
        end
        attr_reader :input_fields

        sig do
          params(
            input_fields:
              T::Array[
                HubSpotSDK::Automation::PublicInputFieldDefinition::OrHash
              ]
          ).void
        end
        attr_writer :input_fields

        # Contains labels for the action, including names and descriptions.
        sig do
          returns(
            T.nilable(
              T::Hash[Symbol, HubSpotSDK::Automation::PublicActionLabels]
            )
          )
        end
        attr_reader :labels

        sig do
          params(
            labels:
              T::Hash[
                Symbol,
                HubSpotSDK::Automation::PublicActionLabels::OrHash
              ]
          ).void
        end
        attr_writer :labels

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

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :object_types

        sig { params(object_types: T::Array[String]).void }
        attr_writer :object_types

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

        # Indicates whether the action is published and available for use.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        sig do
          params(
            action_url: String,
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
            input_fields:
              T::Array[
                HubSpotSDK::Automation::PublicInputFieldDefinition::OrHash
              ],
            labels:
              T::Hash[
                Symbol,
                HubSpotSDK::Automation::PublicActionLabels::OrHash
              ],
            object_request_options:
              HubSpotSDK::Automation::PublicObjectRequestOptions::OrHash,
            object_types: T::Array[String],
            output_fields:
              T::Array[HubSpotSDK::Automation::OutputFieldDefinition::OrHash],
            published: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # The URL endpoint where the action is executed.
          action_url: nil,
          execution_rules: nil,
          input_field_dependencies: nil,
          input_fields: nil,
          # Contains labels for the action, including names and descriptions.
          labels: nil,
          object_request_options: nil,
          object_types: nil,
          output_fields: nil,
          # Indicates whether the action is published and available for use.
          published: nil
        )
        end

        sig do
          override.returns(
            {
              action_url: String,
              execution_rules:
                T::Array[
                  HubSpotSDK::Automation::PublicExecutionTranslationRule
                ],
              input_field_dependencies:
                T::Array[
                  T.any(
                    HubSpotSDK::Automation::PublicSingleFieldDependency,
                    HubSpotSDK::Automation::PublicConditionalSingleFieldDependency
                  )
                ],
              input_fields:
                T::Array[HubSpotSDK::Automation::PublicInputFieldDefinition],
              labels:
                T::Hash[Symbol, HubSpotSDK::Automation::PublicActionLabels],
              object_request_options:
                HubSpotSDK::Automation::PublicObjectRequestOptions,
              object_types: T::Array[String],
              output_fields:
                T::Array[HubSpotSDK::Automation::OutputFieldDefinition],
              published: T::Boolean
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
                HubSpotSDK::Automation::PublicActionDefinitionPatch::InputFieldDependency::Variants
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
