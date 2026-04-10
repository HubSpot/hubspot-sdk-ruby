# typed: strong

module HubSpotSDK
  module Models
    class ForwardPaging < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubSpotSDK::ForwardPaging, HubSpotSDK::Internal::AnyHash)
        end

      # Specifies the paging information needed to retrieve the next set of results in a
      # paginated API response
      sig { returns(T.nilable(HubSpotSDK::NextPage)) }
      attr_reader :next_

      sig { params(next_: HubSpotSDK::NextPage::OrHash).void }
      attr_writer :next_

      sig do
        params(next_: HubSpotSDK::NextPage::OrHash).returns(T.attached_class)
      end
      def self.new(
        # Specifies the paging information needed to retrieve the next set of results in a
        # paginated API response
        next_: nil
      )
      end

      sig { override.returns({ next_: HubSpotSDK::NextPage }) }
      def to_hash
      end
    end
  end
end
