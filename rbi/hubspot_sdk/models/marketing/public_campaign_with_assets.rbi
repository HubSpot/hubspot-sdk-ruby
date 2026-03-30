# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class PublicCampaignWithAssets < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::PublicCampaignWithAssets,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the campaign.
        sig { returns(String) }
        attr_accessor :id

        # Contains the assets associated with the campaign, each represented as a
        # collection of campaign assets.
        sig do
          returns(
            T::Hash[
              Symbol,
              HubspotSDK::Marketing::CollectionResponsePublicCampaignAsset
            ]
          )
        end
        attr_accessor :assets

        # An array of business units associated with the campaign, each represented by a
        # PublicBusinessUnit object.
        sig { returns(T::Array[HubspotSDK::Marketing::PublicBusinessUnit]) }
        attr_accessor :business_units

        # The date and time when the campaign was created, formatted as a date-time
        # string.
        sig { returns(Time) }
        attr_accessor :created_at

        # A map of key-value pairs representing the properties of the campaign.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :properties

        # The date and time when the campaign was last updated, formatted as a date-time
        # string.
        sig { returns(Time) }
        attr_accessor :updated_at

        sig do
          params(
            id: String,
            assets:
              T::Hash[
                Symbol,
                HubspotSDK::Marketing::CollectionResponsePublicCampaignAsset::OrHash
              ],
            business_units:
              T::Array[HubspotSDK::Marketing::PublicBusinessUnit::OrHash],
            created_at: Time,
            properties: T::Hash[Symbol, String],
            updated_at: Time
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the campaign.
          id:,
          # Contains the assets associated with the campaign, each represented as a
          # collection of campaign assets.
          assets:,
          # An array of business units associated with the campaign, each represented by a
          # PublicBusinessUnit object.
          business_units:,
          # The date and time when the campaign was created, formatted as a date-time
          # string.
          created_at:,
          # A map of key-value pairs representing the properties of the campaign.
          properties:,
          # The date and time when the campaign was last updated, formatted as a date-time
          # string.
          updated_at:
        )
        end

        sig do
          override.returns(
            {
              id: String,
              assets:
                T::Hash[
                  Symbol,
                  HubspotSDK::Marketing::CollectionResponsePublicCampaignAsset
                ],
              business_units:
                T::Array[HubspotSDK::Marketing::PublicBusinessUnit],
              created_at: Time,
              properties: T::Hash[Symbol, String],
              updated_at: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
