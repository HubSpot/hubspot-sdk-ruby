# typed: strong

module HubSpotSDK
  module Models
    module Files
      class CollectionResponseFile < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Files::CollectionResponseFile,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Files::File]) }
        attr_accessor :results

        sig { returns(T.nilable(HubSpotSDK::Paging)) }
        attr_reader :paging

        sig { params(paging: HubSpotSDK::Paging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results: T::Array[HubSpotSDK::Files::File::OrHash],
            paging: HubSpotSDK::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(results:, paging: nil)
        end

        sig do
          override.returns(
            {
              results: T::Array[HubSpotSDK::Files::File],
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
