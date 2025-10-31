# typed: strong

module HubspotSDK
  module Models
    class PublicAdsTimeFilter < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::PublicAdsTimeFilter, HubspotSDK::Internal::AnyHash)
        end

      sig { returns(HubspotSDK::PublicAdsTimeFilter::FilterType::OrSymbol) }
      attr_accessor :filter_type

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
      attr_accessor :pruning_refine_by

      sig do
        params(
          filter_type: HubspotSDK::PublicAdsTimeFilter::FilterType::OrSymbol,
          pruning_refine_by:
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
            )
        ).returns(T.attached_class)
      end
      def self.new(filter_type:, pruning_refine_by:)
      end

      sig do
        override.returns(
          {
            filter_type: HubspotSDK::PublicAdsTimeFilter::FilterType::OrSymbol,
            pruning_refine_by:
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
          }
        )
      end
      def to_hash
      end

      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(Symbol, HubspotSDK::PublicAdsTimeFilter::FilterType)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        ADS_TIME =
          T.let(
            :ADS_TIME,
            HubspotSDK::PublicAdsTimeFilter::FilterType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[HubspotSDK::PublicAdsTimeFilter::FilterType::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      module PruningRefineBy
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
            T::Array[HubspotSDK::PublicAdsTimeFilter::PruningRefineBy::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
