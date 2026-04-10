# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicAssociationInListFilter < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicAssociationInListFilter,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Defines the category of the association, such as (HUBSPOT_DEFINED, USER_DEFINED,
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

        # Indicates the type of filter being applied, which is 'ASSOCIATION' by default.
        sig do
          returns(
            HubSpotSDK::Crm::PublicAssociationInListFilter::FilterType::OrSymbol
          )
        end
        attr_accessor :filter_type

        # The ID of the list used in the association filter.
        sig { returns(String) }
        attr_accessor :list_id

        # Specifies the operation to be performed by the filter, such as 'IN_LIST' or
        # 'NOT_IN_LIST'.
        sig { returns(String) }
        attr_accessor :operator

        # The type of object that the association filter is targeting.
        sig { returns(T.nilable(String)) }
        attr_reader :to_object_type

        sig { params(to_object_type: String).void }
        attr_writer :to_object_type

        # The ID representing the type of object that the association filter is targeting.
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
              HubSpotSDK::Crm::PublicAssociationInListFilter::FilterType::OrSymbol,
            list_id: String,
            operator: String,
            to_object_type: String,
            to_object_type_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Defines the category of the association, such as (HUBSPOT_DEFINED, USER_DEFINED,
          # INTEGRATOR_DEFINED, WORK).
          association_category:,
          # The ID representing the type of association being filtered.
          association_type_id:,
          # Specifies the criteria for refining the association filter.
          coalescing_refine_by:,
          # Indicates the type of filter being applied, which is 'ASSOCIATION' by default.
          filter_type:,
          # The ID of the list used in the association filter.
          list_id:,
          # Specifies the operation to be performed by the filter, such as 'IN_LIST' or
          # 'NOT_IN_LIST'.
          operator:,
          # The type of object that the association filter is targeting.
          to_object_type: nil,
          # The ID representing the type of object that the association filter is targeting.
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
                HubSpotSDK::Crm::PublicAssociationInListFilter::FilterType::OrSymbol,
              list_id: String,
              operator: String,
              to_object_type: String,
              to_object_type_id: String
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
                HubSpotSDK::Crm::PublicAssociationInListFilter::CoalescingRefineBy::Variants
              ]
            )
          end
          def self.variants
          end
        end

        # Indicates the type of filter being applied, which is 'ASSOCIATION' by default.
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicAssociationInListFilter::FilterType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ASSOCIATION =
            T.let(
              :ASSOCIATION,
              HubSpotSDK::Crm::PublicAssociationInListFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicAssociationInListFilter::FilterType::TaggedSymbol
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
