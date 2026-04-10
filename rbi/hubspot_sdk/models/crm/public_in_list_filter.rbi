# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicInListFilter < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicInListFilter,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Indicates the type of filter being applied (IN_LIST).
        sig do
          returns(HubSpotSDK::Crm::PublicInListFilter::FilterType::OrSymbol)
        end
        attr_accessor :filter_type

        # The ID of the list used in the association filter.
        sig { returns(String) }
        attr_accessor :list_id

        # Specifies the operation to be performed by the filter (IN_LIST, NOT_IN_LIST).
        sig { returns(String) }
        attr_accessor :operator

        sig { returns(T.nilable(HubSpotSDK::Crm::PublicInListFilterMetadata)) }
        attr_reader :metadata

        sig do
          params(
            metadata: HubSpotSDK::Crm::PublicInListFilterMetadata::OrHash
          ).void
        end
        attr_writer :metadata

        sig do
          params(
            filter_type:
              HubSpotSDK::Crm::PublicInListFilter::FilterType::OrSymbol,
            list_id: String,
            operator: String,
            metadata: HubSpotSDK::Crm::PublicInListFilterMetadata::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates the type of filter being applied (IN_LIST).
          filter_type:,
          # The ID of the list used in the association filter.
          list_id:,
          # Specifies the operation to be performed by the filter (IN_LIST, NOT_IN_LIST).
          operator:,
          metadata: nil
        )
        end

        sig do
          override.returns(
            {
              filter_type:
                HubSpotSDK::Crm::PublicInListFilter::FilterType::OrSymbol,
              list_id: String,
              operator: String,
              metadata: HubSpotSDK::Crm::PublicInListFilterMetadata
            }
          )
        end
        def to_hash
        end

        # Indicates the type of filter being applied (IN_LIST).
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::PublicInListFilter::FilterType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IN_LIST =
            T.let(
              :IN_LIST,
              HubSpotSDK::Crm::PublicInListFilter::FilterType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicInListFilter::FilterType::TaggedSymbol
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
