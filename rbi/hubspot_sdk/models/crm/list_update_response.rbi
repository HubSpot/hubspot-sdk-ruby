# typed: strong

module HubspotSDK
  module Models
    module CRM
      class ListUpdateResponse < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::ListUpdateResponse,
              HubspotSDK::Internal::AnyHash
            )
          end

        # An object list definition.
        sig { returns(T.nilable(HubspotSDK::CRM::PublicObjectList)) }
        attr_reader :updated_list

        sig do
          params(updated_list: HubspotSDK::CRM::PublicObjectList::OrHash).void
        end
        attr_writer :updated_list

        # The updated definition of the list in response to a list update request.
        sig do
          params(
            updated_list: HubspotSDK::CRM::PublicObjectList::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # An object list definition.
          updated_list: nil
        )
        end

        sig do
          override.returns({ updated_list: HubspotSDK::CRM::PublicObjectList })
        end
        def to_hash
        end
      end
    end
  end
end
