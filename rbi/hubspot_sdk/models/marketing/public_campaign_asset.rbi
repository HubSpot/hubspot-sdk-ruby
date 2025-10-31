# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicCampaignAsset < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicCampaignAsset,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Hash[Symbol, Float]) }
        attr_accessor :metrics

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            id: String,
            metrics: T::Hash[Symbol, Float],
            name: String
          ).returns(T.attached_class)
        end
        def self.new(id:, metrics:, name: nil)
        end

        sig do
          override.returns(
            { id: String, metrics: T::Hash[Symbol, Float], name: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
