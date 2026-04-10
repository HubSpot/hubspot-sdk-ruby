# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicPropertyAssociationInListFilter < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicPropertyAssociationInListFilter,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Specifies the criteria for refining the filter by coalescing.
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

        # Indicates the type of filter being applied (PROPERTY_ASSOCIATION).
        sig do
          returns(
            HubSpotSDK::Crm::PublicPropertyAssociationInListFilter::FilterType::OrSymbol
          )
        end
        attr_accessor :filter_type

        # The ID of the list used in the property association filter.
        sig { returns(String) }
        attr_accessor :list_id

        # Defines the operation to be applied by the filter (IN_LIST, NOT_IN_LIST).
        sig { returns(String) }
        attr_accessor :operator

        # The property associated with the object ID in the filter.
        sig { returns(String) }
        attr_accessor :property_with_object_id

        # The ID representing the type of object that the property association filter is
        # targeting.
        sig { returns(T.nilable(String)) }
        attr_reader :to_object_type_id

        sig { params(to_object_type_id: String).void }
        attr_writer :to_object_type_id

        sig do
          params(
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
              HubSpotSDK::Crm::PublicPropertyAssociationInListFilter::FilterType::OrSymbol,
            list_id: String,
            operator: String,
            property_with_object_id: String,
            to_object_type_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the criteria for refining the filter by coalescing.
          coalescing_refine_by:,
          # Indicates the type of filter being applied (PROPERTY_ASSOCIATION).
          filter_type:,
          # The ID of the list used in the property association filter.
          list_id:,
          # Defines the operation to be applied by the filter (IN_LIST, NOT_IN_LIST).
          operator:,
          # The property associated with the object ID in the filter.
          property_with_object_id:,
          # The ID representing the type of object that the property association filter is
          # targeting.
          to_object_type_id: nil
        )
        end

        sig do
          override.returns(
            {
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
                HubSpotSDK::Crm::PublicPropertyAssociationInListFilter::FilterType::OrSymbol,
              list_id: String,
              operator: String,
              property_with_object_id: String,
              to_object_type_id: String
            }
          )
        end
        def to_hash
        end

        # Specifies the criteria for refining the filter by coalescing.
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
                HubSpotSDK::Crm::PublicPropertyAssociationInListFilter::CoalescingRefineBy::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Indicates the type of filter being applied (PROPERTY_ASSOCIATION).
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicPropertyAssociationInListFilter::FilterType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PROPERTY_ASSOCIATION =
            T.let(
              :PROPERTY_ASSOCIATION,
              HubSpotSDK::Crm::PublicPropertyAssociationInListFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicPropertyAssociationInListFilter::FilterType::TaggedSymbol
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
