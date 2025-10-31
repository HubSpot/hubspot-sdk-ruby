# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIListBranch < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIListBranch,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :branch_name

        sig { params(branch_name: String).void }
        attr_writer :branch_name

        sig { returns(T.nilable(HubspotSDK::Automation::APIConnection)) }
        attr_reader :connection

        sig do
          params(connection: HubspotSDK::Automation::APIConnection::OrHash).void
        end
        attr_writer :connection

        sig do
          returns(
            T.nilable(
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
          )
        end
        attr_reader :filter_branch

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
          ).void
        end
        attr_writer :filter_branch

        sig do
          params(
            branch_name: String,
            connection: HubspotSDK::Automation::APIConnection::OrHash,
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
        def self.new(branch_name: nil, connection: nil, filter_branch: nil)
        end

        sig do
          override.returns(
            {
              branch_name: String,
              connection: HubspotSDK::Automation::APIConnection,
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
                HubspotSDK::Automation::APIListBranch::FilterBranch::Variants
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
