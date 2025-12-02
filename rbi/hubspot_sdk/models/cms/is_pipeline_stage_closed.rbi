# typed: strong

module HubspotSDK
  module Models
    module Cms
      class IsPipelineStageClosed < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::IsPipelineStageClosed,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Cms::IsPipelineStageClosed::Operator::TaggedSymbol
          )
        end
        attr_accessor :operator

        sig { returns(T.nilable(T::Array[HubspotSDK::Cms::Expression])) }
        attr_reader :inputs

        sig { params(inputs: T::Array[HubspotSDK::Cms::Expression]).void }
        attr_writer :inputs

        sig { returns(T.nilable(String)) }
        attr_reader :property_name

        sig { params(property_name: String).void }
        attr_writer :property_name

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :value

        sig { params(value: T::Boolean).void }
        attr_writer :value

        sig do
          params(
            operator:
              HubspotSDK::Cms::IsPipelineStageClosed::Operator::OrSymbol,
            inputs: T::Array[HubspotSDK::Cms::Expression],
            property_name: String,
            value: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(operator:, inputs: nil, property_name: nil, value: nil)
        end

        sig do
          override.returns(
            {
              operator:
                HubspotSDK::Cms::IsPipelineStageClosed::Operator::TaggedSymbol,
              inputs: T::Array[HubspotSDK::Cms::Expression],
              property_name: String,
              value: T::Boolean
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Cms::IsPipelineStageClosed::Operator)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IS_PIPELINE_STAGE_CLOSED =
            T.let(
              :IS_PIPELINE_STAGE_CLOSED,
              HubspotSDK::Cms::IsPipelineStageClosed::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Cms::IsPipelineStageClosed::Operator::TaggedSymbol
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
