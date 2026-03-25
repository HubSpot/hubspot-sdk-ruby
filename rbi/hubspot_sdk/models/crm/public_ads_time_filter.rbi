# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicAdsTimeFilter < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicAdsTimeFilter,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Filter type (ADS_TIME)
        sig do
          returns(HubspotSDK::Crm::PublicAdsTimeFilter::FilterType::OrSymbol)
        end
        attr_accessor :filter_type

        # Refinement criteria
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
        attr_accessor :pruning_refine_by

        sig do
          params(
            filter_type:
              HubspotSDK::Crm::PublicAdsTimeFilter::FilterType::OrSymbol,
            pruning_refine_by:
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
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter type (ADS_TIME)
          filter_type:,
          # Refinement criteria
          pruning_refine_by:
        )
        end

        sig do
          override.returns(
            {
              filter_type:
                HubspotSDK::Crm::PublicAdsTimeFilter::FilterType::OrSymbol,
              pruning_refine_by:
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
            }
          )
        end
        def to_hash
        end

        # Filter type (ADS_TIME)
        module FilterType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::PublicAdsTimeFilter::FilterType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ADS_TIME =
            T.let(
              :ADS_TIME,
              HubspotSDK::Crm::PublicAdsTimeFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicAdsTimeFilter::FilterType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Refinement criteria
        module PruningRefineBy
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
                HubspotSDK::Crm::PublicAdsTimeFilter::PruningRefineBy::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
