# typed: strong

module HubSpotSDK
  module Models
    class Paging < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubSpotSDK::Paging, HubSpotSDK::Internal::AnyHash)
        end

      # Specifies the paging information needed to retrieve the next set of results in a
      # paginated API response
      sig { returns(T.nilable(HubSpotSDK::NextPage)) }
      attr_reader :next_

      sig { params(next_: HubSpotSDK::NextPage::OrHash).void }
      attr_writer :next_

      # specifies the paging information needed to retrieve the previous set of results
      # in a paginated API response
      sig { returns(T.nilable(HubSpotSDK::PreviousPage)) }
      attr_reader :prev

      sig { params(prev: HubSpotSDK::PreviousPage::OrHash).void }
      attr_writer :prev

      sig do
        params(
          next_: HubSpotSDK::NextPage::OrHash,
          prev: HubSpotSDK::PreviousPage::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Specifies the paging information needed to retrieve the next set of results in a
        # paginated API response
        next_: nil,
        # specifies the paging information needed to retrieve the previous set of results
        # in a paginated API response
        prev: nil
      )
      end

      sig do
        override.returns(
          { next_: HubSpotSDK::NextPage, prev: HubSpotSDK::PreviousPage }
        )
      end
      def to_hash
      end
    end
  end
end
