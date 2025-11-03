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

        sig do
          returns(
            T.any(
              HubspotSDK::PublicOrFilterBranch,
              HubspotSDK::PublicAndFilterBranch,
              HubspotSDK::PublicNotAllFilterBranch,
              HubspotSDK::PublicNotAnyFilterBranch,
              HubspotSDK::PublicRestrictedFilterBranch,
              HubspotSDK::PublicUnifiedEventsFilterBranch,
              HubspotSDK::PublicPropertyAssociationFilterBranch,
              HubspotSDK::PublicAssociationFilterBranch
            )
          )
        end
        attr_accessor :filter_branch

        # The definition of the list filter branch update request.
        sig do
          params(
            filter_branch:
              T.any(
                HubspotSDK::PublicOrFilterBranch::OrHash,
                HubspotSDK::PublicAndFilterBranch::OrHash,
                HubspotSDK::PublicNotAllFilterBranch::OrHash,
                HubspotSDK::PublicNotAnyFilterBranch::OrHash,
                HubspotSDK::PublicRestrictedFilterBranch::OrHash,
                HubspotSDK::PublicUnifiedEventsFilterBranch::OrHash,
                HubspotSDK::PublicPropertyAssociationFilterBranch::OrHash,
                HubspotSDK::PublicAssociationFilterBranch::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(filter_branch:)
        end

        sig do
          override.returns(
            {
              filter_branch:
                T.any(
                  HubspotSDK::PublicOrFilterBranch,
                  HubspotSDK::PublicAndFilterBranch,
                  HubspotSDK::PublicNotAllFilterBranch,
                  HubspotSDK::PublicNotAnyFilterBranch,
                  HubspotSDK::PublicRestrictedFilterBranch,
                  HubspotSDK::PublicUnifiedEventsFilterBranch,
                  HubspotSDK::PublicPropertyAssociationFilterBranch,
                  HubspotSDK::PublicAssociationFilterBranch
                )
            }
          )
        end
        def to_hash
        end

        module FilterBranch
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::PublicOrFilterBranch,
                HubspotSDK::PublicAndFilterBranch,
                HubspotSDK::PublicNotAllFilterBranch,
                HubspotSDK::PublicNotAnyFilterBranch,
                HubspotSDK::PublicRestrictedFilterBranch,
                HubspotSDK::PublicUnifiedEventsFilterBranch,
                HubspotSDK::PublicPropertyAssociationFilterBranch,
                HubspotSDK::PublicAssociationFilterBranch
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
