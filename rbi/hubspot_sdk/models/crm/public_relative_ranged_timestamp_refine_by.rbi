# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicRelativeRangedTimestampRefineBy < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(HubSpotSDK::Crm::PublicTimeOffset) }
        attr_reader :lower_bound_offset

        sig do
          params(
            lower_bound_offset: HubSpotSDK::Crm::PublicTimeOffset::OrHash
          ).void
        end
        attr_writer :lower_bound_offset

        # Specifies the type of range for the refinement criteria (BETWEEN, NOT_BETWEEN).
        sig { returns(String) }
        attr_accessor :range_type

        # Indicates the type of refinement (RELATIVE_RANGED).
        sig do
          returns(
            HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig { returns(HubSpotSDK::Crm::PublicTimeOffset) }
        attr_reader :upper_bound_offset

        sig do
          params(
            upper_bound_offset: HubSpotSDK::Crm::PublicTimeOffset::OrHash
          ).void
        end
        attr_writer :upper_bound_offset

        sig do
          params(
            lower_bound_offset: HubSpotSDK::Crm::PublicTimeOffset::OrHash,
            range_type: String,
            type:
              HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy::Type::OrSymbol,
            upper_bound_offset: HubSpotSDK::Crm::PublicTimeOffset::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          lower_bound_offset:,
          # Specifies the type of range for the refinement criteria (BETWEEN, NOT_BETWEEN).
          range_type:,
          # Indicates the type of refinement (RELATIVE_RANGED).
          type:,
          upper_bound_offset:
        )
        end

        sig do
          override.returns(
            {
              lower_bound_offset: HubSpotSDK::Crm::PublicTimeOffset,
              range_type: String,
              type:
                HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy::Type::OrSymbol,
              upper_bound_offset: HubSpotSDK::Crm::PublicTimeOffset
            }
          )
        end
        def to_hash
        end

        # Indicates the type of refinement (RELATIVE_RANGED).
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RELATIVE_RANGED =
            T.let(
              :RELATIVE_RANGED,
              HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy::Type::TaggedSymbol
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
