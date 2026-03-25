# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicAbsoluteRangedTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Lower range timestamp of refinement criteria
        sig { returns(Integer) }
        attr_accessor :lower_timestamp

        # Type of range of refinement critaria (BETWEEN, NOT_BETWEEN)
        sig { returns(String) }
        attr_accessor :range_type

        # type of refine by criteria (ABSOLUTE_RANGED)
        sig do
          returns(
            HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy::Type::OrSymbol
          )
        end
        attr_accessor :type

        # Upper range timestamp of refinement criteria
        sig { returns(Integer) }
        attr_accessor :upper_timestamp

        sig do
          params(
            lower_timestamp: Integer,
            range_type: String,
            type:
              HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy::Type::OrSymbol,
            upper_timestamp: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Lower range timestamp of refinement criteria
          lower_timestamp:,
          # Type of range of refinement critaria (BETWEEN, NOT_BETWEEN)
          range_type:,
          # type of refine by criteria (ABSOLUTE_RANGED)
          type:,
          # Upper range timestamp of refinement criteria
          upper_timestamp:
        )
        end

        sig do
          override.returns(
            {
              lower_timestamp: Integer,
              range_type: String,
              type:
                HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy::Type::OrSymbol,
              upper_timestamp: Integer
            }
          )
        end
        def to_hash
        end

        # type of refine by criteria (ABSOLUTE_RANGED)
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ABSOLUTE_RANGED =
            T.let(
              :ABSOLUTE_RANGED,
              HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy::Type::TaggedSymbol
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
