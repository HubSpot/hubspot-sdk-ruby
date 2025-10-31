# typed: strong

module HubspotSDK
  module Models
    class PublicAssociationInListFilter < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicAssociationInListFilter,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :association_category

      sig { returns(Integer) }
      attr_accessor :association_type_id

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
        returns(HubspotSDK::PublicAssociationInListFilter::FilterType::OrSymbol)
      end
      attr_accessor :filter_type

      sig { returns(String) }
      attr_accessor :list_id

      sig { returns(String) }
      attr_accessor :operator

      sig { returns(T.nilable(String)) }
      attr_reader :to_object_type

      sig { params(to_object_type: String).void }
      attr_writer :to_object_type

      sig { returns(T.nilable(String)) }
      attr_reader :to_object_type_id

      sig { params(to_object_type_id: String).void }
      attr_writer :to_object_type_id

      sig do
        params(
          association_category: String,
          association_type_id: Integer,
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
            HubspotSDK::PublicAssociationInListFilter::FilterType::OrSymbol,
          list_id: String,
          operator: String,
          to_object_type: String,
          to_object_type_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        association_category:,
        association_type_id:,
        coalescing_refine_by:,
        filter_type:,
        list_id:,
        operator:,
        to_object_type: nil,
        to_object_type_id: nil
      )
      end

      sig do
        override.returns(
          {
            association_category: String,
            association_type_id: Integer,
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
              HubspotSDK::PublicAssociationInListFilter::FilterType::OrSymbol,
            list_id: String,
            operator: String,
            to_object_type: String,
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
              HubspotSDK::PublicAssociationInListFilter::CoalescingRefineBy::Variants
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
            T.all(Symbol, HubspotSDK::PublicAssociationInListFilter::FilterType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ASSOCIATION =
          T.let(
            :ASSOCIATION,
            HubspotSDK::PublicAssociationInListFilter::FilterType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::PublicAssociationInListFilter::FilterType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
