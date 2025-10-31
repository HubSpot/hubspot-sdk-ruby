# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIFlowBatchFetchFlowIDCoordinate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIFlowBatchFetchFlowIDCoordinate,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :flow_id

        sig do
          returns(
            HubspotSDK::Automation::APIFlowBatchFetchFlowIDCoordinate::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            flow_id: String,
            type:
              HubspotSDK::Automation::APIFlowBatchFetchFlowIDCoordinate::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(flow_id:, type:)
        end

        sig do
          override.returns(
            {
              flow_id: String,
              type:
                HubspotSDK::Automation::APIFlowBatchFetchFlowIDCoordinate::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIFlowBatchFetchFlowIDCoordinate::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FLOW_ID =
            T.let(
              :FLOW_ID,
              HubspotSDK::Automation::APIFlowBatchFetchFlowIDCoordinate::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIFlowBatchFetchFlowIDCoordinate::Type::TaggedSymbol
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
