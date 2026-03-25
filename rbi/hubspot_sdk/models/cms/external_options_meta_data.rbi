# typed: strong

module HubspotSDK
  module Models
    module Cms
      class ExternalOptionsMetaData < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::ExternalOptionsMetaData,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(HubspotSDK::Cms::FilteringMetaData)) }
        attr_reader :filter

        sig { params(filter: HubspotSDK::Cms::FilteringMetaData::OrHash).void }
        attr_writer :filter

        sig { returns(T.nilable(String)) }
        attr_reader :related_object_type_id

        sig { params(related_object_type_id: String).void }
        attr_writer :related_object_type_id

        sig do
          params(
            filter: HubspotSDK::Cms::FilteringMetaData::OrHash,
            related_object_type_id: String
          ).returns(T.attached_class)
        end
        def self.new(filter: nil, related_object_type_id: nil)
        end

        sig do
          override.returns(
            {
              filter: HubspotSDK::Cms::FilteringMetaData,
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
