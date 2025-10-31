# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class Paging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Marketing::Paging, HubspotSDK::Internal::AnyHash)
          end

        # Specifies the paging information needed to retrieve the next set of results in a
        # paginated API response
        sig { returns(HubspotSDK::NextPage) }
        attr_reader :next_

        sig { params(next_: HubspotSDK::NextPage::OrHash).void }
        attr_writer :next_

        # specifies the paging information needed to retrieve the previous set of results
        # in a paginated API response
        sig { returns(T.nilable(HubspotSDK::PreviousPage)) }
        attr_reader :prev

        sig { params(prev: HubspotSDK::PreviousPage::OrHash).void }
        attr_writer :prev

        # Contains information pagination of results.
        sig do
          params(
            next_: HubspotSDK::NextPage::OrHash,
            prev: HubspotSDK::PreviousPage::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the paging information needed to retrieve the next set of results in a
          # paginated API response
          next_:,
          # specifies the paging information needed to retrieve the previous set of results
          # in a paginated API response
          prev: nil
        )
        end

        sig do
          override.returns(
            { next_: HubspotSDK::NextPage, prev: HubspotSDK::PreviousPage }
          )
        end
        def to_hash
        end
      end
    end
  end
end
