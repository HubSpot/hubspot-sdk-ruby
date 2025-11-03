# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Objects
        module PartnerClients
          class AssociationUpdateParams < HubspotSDK::Internal::Type::BaseModel
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Crm::Objects::PartnerClients::AssociationUpdateParams,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :partner_client_id

            sig { returns(String) }
            attr_accessor :to_object_type

            sig { returns(String) }
            attr_accessor :to_object_id

            sig do
              params(
                partner_client_id: String,
                to_object_type: String,
                to_object_id: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              partner_client_id:,
              to_object_type:,
              to_object_id:,
              request_options: {}
            )
            end

            sig do
              override.returns(
                {
                  partner_client_id: String,
                  to_object_type: String,
                  to_object_id: String,
                  request_options: HubspotSDK::RequestOptions
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
