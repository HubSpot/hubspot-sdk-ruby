# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          class BatchInputPublicAssociationSpec < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::CRM::Associations::Schema::BatchInputPublicAssociationSpec,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  HubspotSDK::CRM::Associations::Schema::PublicAssociationSpec
                ]
              )
            end
            attr_accessor :inputs

            sig do
              params(
                inputs:
                  T::Array[
                    HubspotSDK::CRM::Associations::Schema::PublicAssociationSpec::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(inputs:)
            end

            sig do
              override.returns(
                {
                  inputs:
                    T::Array[
                      HubspotSDK::CRM::Associations::Schema::PublicAssociationSpec
                    ]
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
