# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicNumAssociationsFilter < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicNumAssociationsFilter,
              HubspotSDK::Internal::AnyHash
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
              HubspotSDK::Crm::PublicNumOccurrencesRefineBy,
              HubspotSDK::Crm::PublicSetOccurrencesRefineBy,
              HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
              HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
              HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
              HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
              HubspotSDK::Crm::PublicAllHistoryRefineBy,
              HubspotSDK::Crm::PublicTimePointOperation,
              HubspotSDK::Crm::PublicRangedTimeOperation
            )
          )
        end
        attr_accessor :coalescing_refine_by

        # Indicates the type of filter being applied (NUM_ASSOCIATIONS).
        sig do
          returns(
            HubspotSDK::Crm::PublicNumAssociationsFilter::FilterType::OrSymbol
          )
        end
        attr_accessor :filter_type

        sig do
          params(
            association_category: String,
            association_type_id: Integer,
            coalescing_refine_by:
              T.any(
                HubspotSDK::Crm::PublicNumOccurrencesRefineBy::OrHash,
                HubspotSDK::Crm::PublicSetOccurrencesRefineBy::OrHash,
                HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy::OrHash,
                HubspotSDK::Crm::PublicAllHistoryRefineBy::OrHash,
                HubspotSDK::Crm::PublicTimePointOperation::OrHash,
                HubspotSDK::Crm::PublicRangedTimeOperation::OrHash
              ),
            filter_type:
              HubspotSDK::Crm::PublicNumAssociationsFilter::FilterType::OrSymbol
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
                  HubspotSDK::Crm::PublicNumOccurrencesRefineBy,
                  HubspotSDK::Crm::PublicSetOccurrencesRefineBy,
                  HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
                  HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
                  HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
                  HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
                  HubspotSDK::Crm::PublicAllHistoryRefineBy,
                  HubspotSDK::Crm::PublicTimePointOperation,
                  HubspotSDK::Crm::PublicRangedTimeOperation
                ),
              filter_type:
                HubspotSDK::Crm::PublicNumAssociationsFilter::FilterType::OrSymbol
            }
          )
        end
        def to_hash
        end

        # Specifies the criteria for refining the association filter.
        module CoalescingRefineBy
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::PublicNumOccurrencesRefineBy,
                HubspotSDK::Crm::PublicSetOccurrencesRefineBy,
                HubspotSDK::Crm::PublicRelativeComparativeTimestampRefineBy,
                HubspotSDK::Crm::PublicRelativeRangedTimestampRefineBy,
                HubspotSDK::Crm::PublicAbsoluteComparativeTimestampRefineBy,
                HubspotSDK::Crm::PublicAbsoluteRangedTimestampRefineBy,
                HubspotSDK::Crm::PublicAllHistoryRefineBy,
                HubspotSDK::Crm::PublicTimePointOperation,
                HubspotSDK::Crm::PublicRangedTimeOperation
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicNumAssociationsFilter::CoalescingRefineBy::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Indicates the type of filter being applied (NUM_ASSOCIATIONS).
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicNumAssociationsFilter::FilterType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NUM_ASSOCIATIONS =
            T.let(
              :NUM_ASSOCIATIONS,
              HubspotSDK::Crm::PublicNumAssociationsFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicNumAssociationsFilter::FilterType::TaggedSymbol
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
