# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PropertyValidationListResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Models::CRM::PropertyValidationListResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubspotSDK::Models::CRM::PropertyValidationListResponse::Result
            ]
          )
        end
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[
                HubspotSDK::Models::CRM::PropertyValidationListResponse::Result::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(results:)
        end

        sig do
          override.returns(
            {
              results:
                T::Array[
                  HubspotSDK::Models::CRM::PropertyValidationListResponse::Result
                ]
            }
          )
        end
        def to_hash
        end

        class Result < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Models::CRM::PropertyValidationListResponse::Result,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :property_name

          sig do
            returns(
              T::Array[
                HubspotSDK::Models::CRM::PropertyValidationListResponse::Result::PropertyValidationRule
              ]
            )
          end
          attr_accessor :property_validation_rules

          sig do
            params(
              property_name: String,
              property_validation_rules:
                T::Array[
                  HubspotSDK::Models::CRM::PropertyValidationListResponse::Result::PropertyValidationRule::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(property_name:, property_validation_rules:)
          end

          sig do
            override.returns(
              {
                property_name: String,
                property_validation_rules:
                  T::Array[
                    HubspotSDK::Models::CRM::PropertyValidationListResponse::Result::PropertyValidationRule
                  ]
              }
            )
          end
          def to_hash
          end

          class PropertyValidationRule < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Models::CRM::PropertyValidationListResponse::Result::PropertyValidationRule,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(T::Array[String]) }
            attr_accessor :rule_arguments

            sig { returns(String) }
            attr_accessor :rule_type

            sig do
              params(
                rule_arguments: T::Array[String],
                rule_type: String
              ).returns(T.attached_class)
            end
            def self.new(rule_arguments:, rule_type:)
            end

            sig do
              override.returns(
                { rule_arguments: T::Array[String], rule_type: String }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
