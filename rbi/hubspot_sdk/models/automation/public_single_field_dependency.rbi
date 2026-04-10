# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class PublicSingleFieldDependency < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::PublicSingleFieldDependency,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The name of the field that controls the dependency.
        sig { returns(String) }
        attr_accessor :controlling_field_name

        # The type of dependency, with the default value being 'SINGLE_FIELD'.
        sig do
          returns(
            HubSpotSDK::Automation::PublicSingleFieldDependency::DependencyType::OrSymbol
          )
        end
        attr_accessor :dependency_type

        sig { returns(T::Array[String]) }
        attr_accessor :dependent_field_names

        sig do
          params(
            controlling_field_name: String,
            dependency_type:
              HubSpotSDK::Automation::PublicSingleFieldDependency::DependencyType::OrSymbol,
            dependent_field_names: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          # The name of the field that controls the dependency.
          controlling_field_name:,
          # The type of dependency, with the default value being 'SINGLE_FIELD'.
          dependency_type:,
          dependent_field_names:
        )
        end

        sig do
          override.returns(
            {
              controlling_field_name: String,
              dependency_type:
                HubSpotSDK::Automation::PublicSingleFieldDependency::DependencyType::OrSymbol,
              dependent_field_names: T::Array[String]
            }
          )
        end
        def to_hash
        end

        # The type of dependency, with the default value being 'SINGLE_FIELD'.
        module DependencyType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Automation::PublicSingleFieldDependency::DependencyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SINGLE_FIELD =
            T.let(
              :SINGLE_FIELD,
              HubSpotSDK::Automation::PublicSingleFieldDependency::DependencyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::PublicSingleFieldDependency::DependencyType::TaggedSymbol
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
