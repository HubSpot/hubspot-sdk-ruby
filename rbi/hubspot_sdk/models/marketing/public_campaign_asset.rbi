# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class PublicCampaignAsset < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::PublicCampaignAsset,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the campaign asset.
        sig { returns(String) }
        attr_accessor :id

        # A collection of metrics associated with the campaign asset, represented as
        # key-value pairs.
        sig { returns(T.nilable(T::Hash[Symbol, Float])) }
        attr_reader :metrics

        sig { params(metrics: T::Hash[Symbol, Float]).void }
        attr_writer :metrics

        # The name of the campaign asset.
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
        def self.new(
          # The unique identifier for the campaign asset.
          id:,
          # A collection of metrics associated with the campaign asset, represented as
          # key-value pairs.
          metrics: nil,
          # The name of the campaign asset.
          name: nil
        )
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
