# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicRelativeComparativeTimestampRefineBy < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Defines the comparison operation to be used in the refinement (BEFORE, AFTER).
        sig { returns(String) }
        attr_accessor :comparison

        sig { returns(HubSpotSDK::Crm::PublicTimeOffset) }
        attr_reader :time_offset

        sig do
          params(time_offset: HubSpotSDK::Crm::PublicTimeOffset::OrHash).void
        end
        attr_writer :time_offset

        # Specifies the type of refinement, (RELATIVE_COMPARATIVE).
        sig do
          returns(
            HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            comparison: String,
            time_offset: HubSpotSDK::Crm::PublicTimeOffset::OrHash,
            type:
              HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Defines the comparison operation to be used in the refinement (BEFORE, AFTER).
          comparison:,
          time_offset:,
          # Specifies the type of refinement, (RELATIVE_COMPARATIVE).
          type:
        )
        end

        sig do
          override.returns(
            {
              comparison: String,
              time_offset: HubSpotSDK::Crm::PublicTimeOffset,
              type:
                HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Specifies the type of refinement, (RELATIVE_COMPARATIVE).
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RELATIVE_COMPARATIVE =
            T.let(
              :RELATIVE_COMPARATIVE,
              HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::Type::TaggedSymbol
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
