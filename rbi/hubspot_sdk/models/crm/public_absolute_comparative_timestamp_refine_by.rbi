# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicAbsoluteComparativeTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Timestamp comparison options (BEFORE, AFTER)
        sig { returns(String) }
        attr_accessor :comparison

        # Timestamp to be used in refine by criteria
        sig { returns(Integer) }
        attr_accessor :timestamp

        # type of refine by criteria (ABSOLUTE_COMPARATIVE)
        sig do
          returns(
            HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            comparison: String,
            timestamp: Integer,
            type:
              HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Timestamp comparison options (BEFORE, AFTER)
          comparison:,
          # Timestamp to be used in refine by criteria
          timestamp:,
          # type of refine by criteria (ABSOLUTE_COMPARATIVE)
          type:
        )
        end

        sig do
          override.returns(
            {
              comparison: String,
              timestamp: Integer,
              type:
                HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # type of refine by criteria (ABSOLUTE_COMPARATIVE)
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABSOLUTE_COMPARATIVE =
            T.let(
              :ABSOLUTE_COMPARATIVE,
              HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy::Type::TaggedSymbol
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
