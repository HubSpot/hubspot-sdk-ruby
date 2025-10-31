# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PropertyValidationGetResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Models::CRM::PropertyValidationGetResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubspotSDK::Models::CRM::PropertyValidationGetResponse::Result
            ]
          )
        end
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[
                HubspotSDK::Models::CRM::PropertyValidationGetResponse::Result::OrHash
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
                  HubspotSDK::Models::CRM::PropertyValidationGetResponse::Result
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
                HubspotSDK::Models::CRM::PropertyValidationGetResponse::Result,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T::Array[String]) }
          attr_accessor :rule_arguments

          sig { returns(String) }
          attr_accessor :rule_type

          sig do
            params(rule_arguments: T::Array[String], rule_type: String).returns(
              T.attached_class
            )
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
