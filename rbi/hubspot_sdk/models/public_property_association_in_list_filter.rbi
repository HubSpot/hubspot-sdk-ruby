# typed: strong

module HubspotSDK
  module Models
    class PublicPropertyAssociationInListFilter < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicPropertyAssociationInListFilter,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig do
        returns(
          T.any(
            HubspotSDK::PublicNumOccurrencesRefineBy,
            HubspotSDK::PublicSetOccurrencesRefineBy,
            HubspotSDK::PublicRelativeComparativeTimestampRefineBy,
            HubspotSDK::PublicRelativeRangedTimestampRefineBy,
            HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy,
            HubspotSDK::PublicAbsoluteRangedTimestampRefineBy,
            HubspotSDK::PublicAllHistoryRefineBy,
            HubspotSDK::PublicTimePointOperation,
            HubspotSDK::PublicRangedTimeOperation
          )
        )
      end
      attr_accessor :coalescing_refine_by

      sig do
        returns(
          HubspotSDK::PublicPropertyAssociationInListFilter::FilterType::OrSymbol
        )
      end
      attr_accessor :filter_type

      sig { returns(String) }
      attr_accessor :list_id

      sig { returns(String) }
      attr_accessor :operator

      sig { returns(String) }
      attr_accessor :property_with_object_id

      sig { returns(T.nilable(String)) }
      attr_reader :to_object_type_id

      sig { params(to_object_type_id: String).void }
      attr_writer :to_object_type_id

      sig do
        params(
          coalescing_refine_by:
            T.any(
              HubspotSDK::PublicNumOccurrencesRefineBy::OrHash,
              HubspotSDK::PublicSetOccurrencesRefineBy::OrHash,
              HubspotSDK::PublicRelativeComparativeTimestampRefineBy::OrHash,
              HubspotSDK::PublicRelativeRangedTimestampRefineBy::OrHash,
              HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy::OrHash,
              HubspotSDK::PublicAbsoluteRangedTimestampRefineBy::OrHash,
              HubspotSDK::PublicAllHistoryRefineBy::OrHash,
              HubspotSDK::PublicTimePointOperation::OrHash,
              HubspotSDK::PublicRangedTimeOperation::OrHash
            ),
          filter_type:
            HubspotSDK::PublicPropertyAssociationInListFilter::FilterType::OrSymbol,
          list_id: String,
          operator: String,
          property_with_object_id: String,
          to_object_type_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        coalescing_refine_by:,
        filter_type:,
        list_id:,
        operator:,
        property_with_object_id:,
        to_object_type_id: nil
      )
      end

      sig do
        override.returns(
          {
            coalescing_refine_by:
              T.any(
                HubspotSDK::PublicNumOccurrencesRefineBy,
                HubspotSDK::PublicSetOccurrencesRefineBy,
                HubspotSDK::PublicRelativeComparativeTimestampRefineBy,
                HubspotSDK::PublicRelativeRangedTimestampRefineBy,
                HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy,
                HubspotSDK::PublicAbsoluteRangedTimestampRefineBy,
                HubspotSDK::PublicAllHistoryRefineBy,
                HubspotSDK::PublicTimePointOperation,
                HubspotSDK::PublicRangedTimeOperation
              ),
            filter_type:
              HubspotSDK::PublicPropertyAssociationInListFilter::FilterType::OrSymbol,
            list_id: String,
            operator: String,
            property_with_object_id: String,
            to_object_type_id: String
          }
        )
      end
      def to_hash
      end

      module CoalescingRefineBy
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::PublicNumOccurrencesRefineBy,
              HubspotSDK::PublicSetOccurrencesRefineBy,
              HubspotSDK::PublicRelativeComparativeTimestampRefineBy,
              HubspotSDK::PublicRelativeRangedTimestampRefineBy,
              HubspotSDK::PublicAbsoluteComparativeTimestampRefineBy,
              HubspotSDK::PublicAbsoluteRangedTimestampRefineBy,
              HubspotSDK::PublicAllHistoryRefineBy,
              HubspotSDK::PublicTimePointOperation,
              HubspotSDK::PublicRangedTimeOperation
            )
          end

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicPropertyAssociationInListFilter::CoalescingRefineBy::Variants
            ]
          )
        end
        def self.variants
        end
      end

      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              HubspotSDK::PublicPropertyAssociationInListFilter::FilterType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PROPERTY_ASSOCIATION =
          T.let(
            :PROPERTY_ASSOCIATION,
            HubspotSDK::PublicPropertyAssociationInListFilter::FilterType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicPropertyAssociationInListFilter::FilterType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
