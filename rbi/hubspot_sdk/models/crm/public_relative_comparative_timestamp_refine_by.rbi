# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicRelativeComparativeTimestampRefineBy < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Defines the comparison operation to be used in the refinement (BEFORE, AFTER).
        sig { returns(String) }
        attr_accessor :comparison

        sig { returns(HubspotSDK::Crm::PublicTimeOffset) }
        attr_reader :time_offset

        sig do
          params(time_offset: HubspotSDK::Crm::PublicTimeOffset::OrHash).void
        end
        attr_writer :time_offset

        # Specifies the type of refinement, (RELATIVE_COMPARATIVE).
        sig do
          returns(
            HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            comparison: String,
            time_offset: HubspotSDK::Crm::PublicTimeOffset::OrHash,
            type:
              HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::Type::OrSymbol
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
              time_offset: HubspotSDK::Crm::PublicTimeOffset,
              type:
                HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Specifies the type of refinement, (RELATIVE_COMPARATIVE).
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          RELATIVE_COMPARATIVE =
            T.let(
              :RELATIVE_COMPARATIVE,
              HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::Type::TaggedSymbol
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
