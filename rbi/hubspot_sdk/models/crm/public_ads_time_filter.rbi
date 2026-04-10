# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicAdsTimeFilter < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicAdsTimeFilter,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Filter type (ADS_TIME)
        sig do
          returns(HubSpotSDK::Crm::PublicAdsTimeFilter::FilterType::OrSymbol)
        end
        attr_accessor :filter_type

        # Refinement criteria
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
        attr_accessor :pruning_refine_by

        sig do
          params(
            filter_type:
              HubSpotSDK::Crm::PublicAdsTimeFilter::FilterType::OrSymbol,
            pruning_refine_by:
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
                HubSpotSDK::Crm::PublicAdsTimeFilter::FilterType::OrSymbol,
              pruning_refine_by:
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
            }
          )
        end
        def to_hash
        end

        # Filter type (ADS_TIME)
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::PublicAdsTimeFilter::FilterType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ADS_TIME =
            T.let(
              :ADS_TIME,
              HubSpotSDK::Crm::PublicAdsTimeFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicAdsTimeFilter::FilterType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Refinement criteria
        module PruningRefineBy
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
                HubSpotSDK::Crm::PublicAdsTimeFilter::PruningRefineBy::Variants
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
