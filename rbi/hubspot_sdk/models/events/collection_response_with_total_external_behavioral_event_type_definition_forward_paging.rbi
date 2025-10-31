# typed: strong

module HubspotSDK
  module Models
    module Events
      class CollectionResponseWithTotalExternalBehavioralEventTypeDefinitionForwardPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::CollectionResponseWithTotalExternalBehavioralEventTypeDefinitionForwardPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[HubspotSDK::Events::ExternalBehavioralEventTypeDefinition]
          )
        end
        attr_accessor :results

        sig { returns(Integer) }
        attr_accessor :total

        sig { returns(T.nilable(HubspotSDK::ForwardPaging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::ForwardPaging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results:
              T::Array[
                HubspotSDK::Events::ExternalBehavioralEventTypeDefinition::OrHash
              ],
            total: Integer,
            paging: HubspotSDK::ForwardPaging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(results:, total:, paging: nil)
        end

        sig do
          override.returns(
            {
              results:
                T::Array[
                  HubspotSDK::Events::ExternalBehavioralEventTypeDefinition
                ],
              total: Integer,
              paging: HubspotSDK::ForwardPaging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
