# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class ExternalOptionsMetaData < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::ExternalOptionsMetaData,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(HubSpotSDK::Cms::FilteringMetaData)) }
        attr_reader :filter

        sig { params(filter: HubSpotSDK::Cms::FilteringMetaData::OrHash).void }
        attr_writer :filter

        sig { returns(T.nilable(String)) }
        attr_reader :related_object_type_id

        sig { params(related_object_type_id: String).void }
        attr_writer :related_object_type_id

        sig do
          params(
            filter: HubSpotSDK::Cms::FilteringMetaData::OrHash,
            related_object_type_id: String
          ).returns(T.attached_class)
        end
        def self.new(filter: nil, related_object_type_id: nil)
        end

        sig do
          override.returns(
            {
              filter: HubSpotSDK::Cms::FilteringMetaData,
              related_object_type_id: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
