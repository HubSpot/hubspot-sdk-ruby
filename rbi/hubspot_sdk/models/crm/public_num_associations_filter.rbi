# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicNumAssociationsFilter < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicNumAssociationsFilter,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Defines the category of the association (HUBSPOT_DEFINED, USER_DEFINED,
        # INTEGRATOR_DEFINED, WORK).
        sig { returns(String) }
        attr_accessor :association_category

        # The ID representing the type of association being filtered.
        sig { returns(Integer) }
        attr_accessor :association_type_id

        # Specifies the criteria for refining the association filter.
        sig do
          returns(
            T.any(
              HubSpotSDK::Crm::PublicNumOccurrencesRefineBy,
              HubSpotSDK::Crm::PublicSetOccurrencesRefineBy,
              HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
              HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
              HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
              HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
              HubSpotSDK::Crm::PublicAllHistoryRefineBy,
              HubSpotSDK::Crm::PublicTimePointOperation,
              HubSpotSDK::Crm::PublicRangedTimeOperation
            )
          )
        end
        attr_accessor :coalescing_refine_by

        # Indicates the type of filter being applied (NUM_ASSOCIATIONS).
        sig do
          returns(
            HubSpotSDK::Crm::PublicNumAssociationsFilter::FilterType::OrSymbol
          )
        end
        attr_accessor :filter_type

        sig do
          params(
            association_category: String,
            association_type_id: Integer,
            coalescing_refine_by:
              T.any(
                HubSpotSDK::Crm::PublicNumOccurrencesRefineBy::OrHash,
                HubSpotSDK::Crm::PublicSetOccurrencesRefineBy::OrHash,
                HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::OrHash,
                HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy::OrHash,
                HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy::OrHash,
                HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy::OrHash,
                HubSpotSDK::Crm::PublicAllHistoryRefineBy::OrHash,
                HubSpotSDK::Crm::PublicTimePointOperation::OrHash,
                HubSpotSDK::Crm::PublicRangedTimeOperation::OrHash
              ),
            filter_type:
              HubSpotSDK::Crm::PublicNumAssociationsFilter::FilterType::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Defines the category of the association (HUBSPOT_DEFINED, USER_DEFINED,
          # INTEGRATOR_DEFINED, WORK).
          association_category:,
          # The ID representing the type of association being filtered.
          association_type_id:,
          # Specifies the criteria for refining the association filter.
          coalescing_refine_by:,
          # Indicates the type of filter being applied (NUM_ASSOCIATIONS).
          filter_type:
        )
        end

        sig do
          override.returns(
            {
              association_category: String,
              association_type_id: Integer,
              coalescing_refine_by:
                T.any(
                  HubSpotSDK::Crm::PublicNumOccurrencesRefineBy,
                  HubSpotSDK::Crm::PublicSetOccurrencesRefineBy,
                  HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
                  HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
                  HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
                  HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
                  HubSpotSDK::Crm::PublicAllHistoryRefineBy,
                  HubSpotSDK::Crm::PublicTimePointOperation,
                  HubSpotSDK::Crm::PublicRangedTimeOperation
                ),
              filter_type:
                HubSpotSDK::Crm::PublicNumAssociationsFilter::FilterType::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Specifies the criteria for refining the association filter.
        module CoalescingRefineBy
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::PublicNumOccurrencesRefineBy,
                HubSpotSDK::Crm::PublicSetOccurrencesRefineBy,
                HubSpotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
                HubSpotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
                HubSpotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
                HubSpotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
                HubSpotSDK::Crm::PublicAllHistoryRefineBy,
                HubSpotSDK::Crm::PublicTimePointOperation,
                HubSpotSDK::Crm::PublicRangedTimeOperation
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicNumAssociationsFilter::CoalescingRefineBy::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Indicates the type of filter being applied (NUM_ASSOCIATIONS).
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicNumAssociationsFilter::FilterType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NUM_ASSOCIATIONS =
            T.let(
              :NUM_ASSOCIATIONS,
              HubSpotSDK::Crm::PublicNumAssociationsFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicNumAssociationsFilter::FilterType::TaggedSymbol
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
