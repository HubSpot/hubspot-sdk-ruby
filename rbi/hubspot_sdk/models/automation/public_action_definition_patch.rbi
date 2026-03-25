# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicActionDefinitionPatch < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicActionDefinitionPatch,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :action_url

        sig { params(action_url: String).void }
        attr_writer :action_url

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
                T.any(
                  HubspotSDK::Automation::PublicSingleFieldDependency,
                  HubspotSDK::Automation::PublicConditionalSingleFieldDependency
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
                  HubspotSDK::Automation::PublicSingleFieldDependency::OrHash,
                  HubspotSDK::Automation::PublicConditionalSingleFieldDependency::OrHash
                )
              ]
          ).void
        end
        attr_writer :input_field_dependencies

        sig do
          returns(
            T.nilable(
              T::Array[HubspotSDK::Automation::PublicInputFieldDefinition]
            )
          )
        end
        attr_reader :input_fields

        sig do
          params(
            input_fields:
              T::Array[
                HubspotSDK::Automation::PublicInputFieldDefinition::OrHash
              ]
          ).void
        end
        attr_writer :input_fields

        sig do
          returns(
            T.nilable(
              T::Hash[Symbol, HubspotSDK::Automation::PublicActionLabels]
            )
          )
        end
        attr_reader :labels

        sig do
          params(
            labels:
              T::Hash[
                Symbol,
                HubspotSDK::Automation::PublicActionLabels::OrHash
              ]
          ).void
        end
        attr_writer :labels

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

        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :object_types

        sig { params(object_types: T::Array[String]).void }
        attr_writer :object_types

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

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :published

        sig { params(published: T::Boolean).void }
        attr_writer :published

        sig do
          params(
            action_url: String,
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
            input_fields:
              T::Array[
                HubspotSDK::Automation::PublicInputFieldDefinition::OrHash
              ],
            labels:
              T::Hash[
                Symbol,
                HubspotSDK::Automation::PublicActionLabels::OrHash
              ],
            object_request_options:
              HubspotSDK::Automation::PublicObjectRequestOptions::OrHash,
            object_types: T::Array[String],
            output_fields:
              T::Array[HubspotSDK::Automation::OutputFieldDefinition::OrHash],
            published: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          action_url: nil,
          execution_rules: nil,
          input_field_dependencies: nil,
          input_fields: nil,
          labels: nil,
          object_request_options: nil,
          object_types: nil,
          output_fields: nil,
          published: nil
        )
        end

        sig do
          override.returns(
            {
              action_url: String,
              execution_rules:
                T::Array[
                  HubspotSDK::Automation::PublicExecutionTranslationRule
                ],
              input_field_dependencies:
                T::Array[
                  T.any(
                    HubspotSDK::Automation::PublicSingleFieldDependency,
                    HubspotSDK::Automation::PublicConditionalSingleFieldDependency
                  )
                ],
              input_fields:
                T::Array[HubspotSDK::Automation::PublicInputFieldDefinition],
              labels:
                T::Hash[Symbol, HubspotSDK::Automation::PublicActionLabels],
              object_request_options:
                HubspotSDK::Automation::PublicObjectRequestOptions,
              object_types: T::Array[String],
              output_fields:
                T::Array[HubspotSDK::Automation::OutputFieldDefinition],
              published: T::Boolean
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
                HubspotSDK::Automation::PublicActionDefinitionPatch::InputFieldDependency::Variants
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
