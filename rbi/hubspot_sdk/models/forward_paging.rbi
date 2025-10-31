# typed: strong

module HubspotSDK
  module Models
    class ForwardPaging < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::ForwardPaging, HubspotSDK::Internal::AnyHash)
        end

      # Specifies the paging information needed to retrieve the next set of results in a
      # paginated API response
      sig { returns(T.nilable(HubspotSDK::NextPage)) }
      attr_reader :next_

      sig { params(next_: HubspotSDK::NextPage::OrHash).void }
      attr_writer :next_

      sig do
        params(next_: HubspotSDK::NextPage::OrHash).returns(T.attached_class)
      end
      def self.new(
        # Specifies the paging information needed to retrieve the next set of results in a
        # paginated API response
        next_: nil
      )
      end

      sig { override.returns({ next_: HubspotSDK::NextPage }) }
      def to_hash
      end
    end
  end
end
