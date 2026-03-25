# typed: strong

module HubspotSDK
  module Models
    module Automation
      class PublicSingleFieldDependency < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::PublicSingleFieldDependency,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :controlling_field_name

        sig do
          returns(
            HubspotSDK::Automation::PublicSingleFieldDependency::DependencyType::OrSymbol
          )
        end
        attr_accessor :dependency_type

        sig { returns(T::Array[String]) }
        attr_accessor :dependent_field_names

        sig do
          params(
            controlling_field_name: String,
            dependency_type:
              HubspotSDK::Automation::PublicSingleFieldDependency::DependencyType::OrSymbol,
            dependent_field_names: T::Array[String]
          ).returns(T.attached_class)
        end
        def self.new(
          controlling_field_name:,
          dependency_type:,
          dependent_field_names:
        )
        end

        sig do
          override.returns(
            {
              controlling_field_name: String,
              dependency_type:
                HubspotSDK::Automation::PublicSingleFieldDependency::DependencyType::OrSymbol,
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
                HubspotSDK::Automation::PublicSingleFieldDependency::DependencyType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SINGLE_FIELD =
            T.let(
              :SINGLE_FIELD,
              HubspotSDK::Automation::PublicSingleFieldDependency::DependencyType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::PublicSingleFieldDependency::DependencyType::TaggedSymbol
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
