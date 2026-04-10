# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class ListFilterUpdateRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::ListFilterUpdateRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Updated filtering criteria for the list
        sig do
          returns(
            T.any(
              HubSpotSDK::Crm::PublicOrFilterBranch,
              HubSpotSDK::Crm::PublicAndFilterBranch,
              HubSpotSDK::Crm::PublicNotAllFilterBranch,
              HubSpotSDK::Crm::PublicNotAnyFilterBranch,
              HubSpotSDK::Crm::PublicRestrictedFilterBranch,
              HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch,
              HubSpotSDK::Crm::PublicPropertyAssociationFilterBranch,
              HubSpotSDK::Crm::PublicAssociationFilterBranch
            )
          )
        end
        attr_accessor :filter_branch

        sig do
          params(
            filter_branch:
              T.any(
                HubSpotSDK::Crm::PublicOrFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicAndFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicNotAllFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicNotAnyFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicRestrictedFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicPropertyAssociationFilterBranch::OrHash,
                HubSpotSDK::Crm::PublicAssociationFilterBranch::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # Updated filtering criteria for the list
          filter_branch:
        )
        end

        sig do
          override.returns(
            {
              filter_branch:
                T.any(
                  HubSpotSDK::Crm::PublicOrFilterBranch,
                  HubSpotSDK::Crm::PublicAndFilterBranch,
                  HubSpotSDK::Crm::PublicNotAllFilterBranch,
                  HubSpotSDK::Crm::PublicNotAnyFilterBranch,
                  HubSpotSDK::Crm::PublicRestrictedFilterBranch,
                  HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch,
                  HubSpotSDK::Crm::PublicPropertyAssociationFilterBranch,
                  HubSpotSDK::Crm::PublicAssociationFilterBranch
                )
            }
          )
        end
        def to_hash
        end

        # Updated filtering criteria for the list
        module FilterBranch
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::PublicOrFilterBranch,
                HubSpotSDK::Crm::PublicAndFilterBranch,
                HubSpotSDK::Crm::PublicNotAllFilterBranch,
                HubSpotSDK::Crm::PublicNotAnyFilterBranch,
                HubSpotSDK::Crm::PublicRestrictedFilterBranch,
                HubSpotSDK::Crm::PublicUnifiedEventsFilterBranch,
                HubSpotSDK::Crm::PublicPropertyAssociationFilterBranch,
                HubSpotSDK::Crm::PublicAssociationFilterBranch
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::ListFilterUpdateRequest::FilterBranch::Variants
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
