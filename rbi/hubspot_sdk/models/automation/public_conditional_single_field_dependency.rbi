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

        sig { returns(String) }
        attr_accessor :controlling_field_name

        sig { returns(String) }
        attr_accessor :controlling_field_value

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
          controlling_field_name:,
          controlling_field_value:,
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
