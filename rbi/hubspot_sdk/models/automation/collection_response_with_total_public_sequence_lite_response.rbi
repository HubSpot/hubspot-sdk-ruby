# typed: strong

module HubspotSDK
  module Models
    module Automation
      class CollectionResponseWithTotalPublicSequenceLiteResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::CollectionResponseWithTotalPublicSequenceLiteResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # An array of PublicSequenceLiteResponse objects, each representing a lightweight
        # version of a sequence.
        sig do
          returns(T::Array[HubspotSDK::Automation::PublicSequenceLiteResponse])
        end
        attr_accessor :results

        # An integer representing the total number of sequence items available.
        sig { returns(Integer) }
        attr_accessor :total

        sig { returns(T.nilable(HubspotSDK::Paging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::Paging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results:
              T::Array[
                HubspotSDK::Automation::PublicSequenceLiteResponse::OrHash
              ],
            total: Integer,
            paging: HubspotSDK::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # An array of PublicSequenceLiteResponse objects, each representing a lightweight
          # version of a sequence.
          results:,
          # An integer representing the total number of sequence items available.
          total:,
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results:
                T::Array[HubspotSDK::Automation::PublicSequenceLiteResponse],
              total: Integer,
              paging: HubspotSDK::Paging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
