# typed: strong

module HubSpotSDK
  module Models
    module Account
      class CollectionResponsePublicAPIUserActionEventForwardPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Account::CollectionResponsePublicAPIUserActionEventForwardPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Account::PublicAPIUserActionEvent]) }
        attr_accessor :results

        sig { returns(T.nilable(HubSpotSDK::ForwardPaging)) }
        attr_reader :paging

        sig { params(paging: HubSpotSDK::ForwardPaging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results:
              T::Array[HubSpotSDK::Account::PublicAPIUserActionEvent::OrHash],
            paging: HubSpotSDK::ForwardPaging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(results:, paging: nil)
        end

        sig do
          override.returns(
            {
              results: T::Array[HubSpotSDK::Account::PublicAPIUserActionEvent],
              paging: HubSpotSDK::ForwardPaging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
