# typed: strong

module HubspotSDK
  module Models
    module Crm
      class ListFilterUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::ListFilterUpdateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Updated filtering criteria for the list
        sig do
          returns(
            T.any(
              HubspotSDK::Crm::PublicOrFilterBranch,
              HubspotSDK::Crm::PublicAndFilterBranch,
              HubspotSDK::Crm::PublicNotAllFilterBranch,
              HubspotSDK::Crm::PublicNotAnyFilterBranch,
              HubspotSDK::Crm::PublicRestrictedFilterBranch,
              HubspotSDK::Crm::PublicUnifiedEventsFilterBranch,
              HubspotSDK::Crm::PublicPropertyAssociationFilterBranch,
              HubspotSDK::Crm::PublicAssociationFilterBranch
            )
          )
        end
        attr_accessor :filter_branch

        sig do
          params(
            filter_branch:
              T.any(
                HubspotSDK::Crm::PublicOrFilterBranch::OrHash,
                HubspotSDK::Crm::PublicAndFilterBranch::OrHash,
                HubspotSDK::Crm::PublicNotAllFilterBranch::OrHash,
                HubspotSDK::Crm::PublicNotAnyFilterBranch::OrHash,
                HubspotSDK::Crm::PublicRestrictedFilterBranch::OrHash,
                HubspotSDK::Crm::PublicUnifiedEventsFilterBranch::OrHash,
                HubspotSDK::Crm::PublicPropertyAssociationFilterBranch::OrHash,
                HubspotSDK::Crm::PublicAssociationFilterBranch::OrHash
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
                  HubspotSDK::Crm::PublicOrFilterBranch,
                  HubspotSDK::Crm::PublicAndFilterBranch,
                  HubspotSDK::Crm::PublicNotAllFilterBranch,
                  HubspotSDK::Crm::PublicNotAnyFilterBranch,
                  HubspotSDK::Crm::PublicRestrictedFilterBranch,
                  HubspotSDK::Crm::PublicUnifiedEventsFilterBranch,
                  HubspotSDK::Crm::PublicPropertyAssociationFilterBranch,
                  HubspotSDK::Crm::PublicAssociationFilterBranch
                )
            }
          )
        end
        def to_hash
        end

        # Updated filtering criteria for the list
        module FilterBranch
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::PublicOrFilterBranch,
                HubspotSDK::Crm::PublicAndFilterBranch,
                HubspotSDK::Crm::PublicNotAllFilterBranch,
                HubspotSDK::Crm::PublicNotAnyFilterBranch,
                HubspotSDK::Crm::PublicRestrictedFilterBranch,
                HubspotSDK::Crm::PublicUnifiedEventsFilterBranch,
                HubspotSDK::Crm::PublicPropertyAssociationFilterBranch,
                HubspotSDK::Crm::PublicAssociationFilterBranch
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::ListFilterUpdateRequest::FilterBranch::Variants
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
