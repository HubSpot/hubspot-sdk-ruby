# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class CollectionResponseWithTotalPublicChannelIntegrationChannel < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::CollectionResponseWithTotalPublicChannelIntegrationChannel,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[HubSpotSDK::Conversations::PublicChannelIntegrationChannel]
          )
        end
        attr_accessor :results

        sig { returns(Integer) }
        attr_accessor :total

        sig { returns(T.nilable(HubSpotSDK::Paging)) }
        attr_reader :paging

        sig { params(paging: HubSpotSDK::Paging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results:
              T::Array[
                HubSpotSDK::Conversations::PublicChannelIntegrationChannel::OrHash
              ],
            total: Integer,
            paging: HubSpotSDK::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(results:, total:, paging: nil)
        end

        sig do
          override.returns(
            {
              results:
                T::Array[
                  HubSpotSDK::Conversations::PublicChannelIntegrationChannel
                ],
              total: Integer,
              paging: HubSpotSDK::Paging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
