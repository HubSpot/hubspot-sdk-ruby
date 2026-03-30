# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicConditionalSingleFieldDependency < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicConditionalSingleFieldDependency,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The name of the field that determines the dependency.
        sig { returns(String) }
        attr_accessor :controlling_field_name

        # The value of the controlling field that triggers the dependency.
        sig { returns(String) }
        attr_accessor :controlling_field_value

        # The type of dependency, with the default value being CONDITIONAL_SINGLE_FIELD.
        sig do
          returns(
            HubspotSDK::Automation::PublicConditionalSingleFieldDependency::DependencyType::OrSymbol
          )
        end
        attr_accessor :dependency_type

        sig { returns(T::Array[String]) }
        attr_accessor :dependent_field_names

        sig do
          params(
            controlling_field_name: String,
            controlling_field_value: String,
            dependency_type:
              HubspotSDK::Automation::PublicConditionalSingleFieldDependency::DependencyType::OrSymbol,
            dependent_field_names: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the field that determines the dependency.
          controlling_field_name:,
          # The value of the controlling field that triggers the dependency.
          controlling_field_value:,
          # The type of dependency, with the default value being CONDITIONAL_SINGLE_FIELD.
          dependency_type:,
          dependent_field_names:
        )
        end

        sig do
          override.returns(
            {
              controlling_field_name: String,
              controlling_field_value: String,
              dependency_type:
                HubspotSDK::Automation::PublicConditionalSingleFieldDependency::DependencyType::OrSymbol,
              dependent_field_names: T::Array[String]
            }
          )
        end
        def to_hash
        end

        # The type of dependency, with the default value being CONDITIONAL_SINGLE_FIELD.
        module DependencyType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::PublicConditionalSingleFieldDependency::DependencyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CONDITIONAL_SINGLE_FIELD =
            T.let(
              :CONDITIONAL_SINGLE_FIELD,
              HubspotSDK::Automation::PublicConditionalSingleFieldDependency::DependencyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::PublicConditionalSingleFieldDependency::DependencyType::TaggedSymbol
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
