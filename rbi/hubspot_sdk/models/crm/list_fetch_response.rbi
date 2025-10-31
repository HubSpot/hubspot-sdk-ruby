# typed: strong

module HubspotSDK
  module Models
    module CRM
      class ListFetchResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::ListFetchResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # An object list definition.
        sig { returns(HubspotSDK::CRM::PublicObjectList) }
        attr_reader :list

        sig { params(list: HubspotSDK::CRM::PublicObjectList::OrHash).void }
        attr_writer :list

        # The response for a list fetch request.
        sig do
          params(list: HubspotSDK::CRM::PublicObjectList::OrHash).returns(
            T.attached_class
          )
        end
        def self.new(
          # An object list definition.
          list:
        )
        end

        sig { override.returns({ list: HubspotSDK::CRM::PublicObjectList }) }
        def to_hash
        end
      end
    end
  end
end
