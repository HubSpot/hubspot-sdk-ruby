# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class ContactCallerID < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::ContactCallerID,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              HubspotSDK::Crm::Extensions::ContactCallerID::CallerIDType::TaggedSymbol
            )
          end
          attr_accessor :caller_id_type

          sig { returns(HubspotSDK::Crm::Extensions::ObjectCoordinates) }
          attr_reader :object_coordinates

          sig do
            params(
              object_coordinates:
                HubspotSDK::Crm::Extensions::ObjectCoordinates::OrHash
            ).void
          end
          attr_writer :object_coordinates

          sig { returns(T.nilable(String)) }
          attr_reader :email

          sig { params(email: String).void }
          attr_writer :email

          sig { returns(T.nilable(String)) }
          attr_reader :first_name

          sig { params(first_name: String).void }
          attr_writer :first_name

          sig { returns(T.nilable(String)) }
          attr_reader :last_name

          sig { params(last_name: String).void }
          attr_writer :last_name

          sig do
            params(
              caller_id_type:
                HubspotSDK::Crm::Extensions::ContactCallerID::CallerIDType::OrSymbol,
              object_coordinates:
                HubspotSDK::Crm::Extensions::ObjectCoordinates::OrHash,
              email: String,
              first_name: String,
              last_name: String
            ).returns(T.attached_class)
          end
          def self.new(
            caller_id_type:,
            object_coordinates:,
            email: nil,
            first_name: nil,
            last_name: nil
          )
          end

          sig do
            override.returns(
              {
                caller_id_type:
                  HubspotSDK::Crm::Extensions::ContactCallerID::CallerIDType::TaggedSymbol,
                object_coordinates:
                  HubspotSDK::Crm::Extensions::ObjectCoordinates,
                email: String,
                first_name: String,
                last_name: String
              }
            )
          end
          def to_hash
          end

          module CallerIDType
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Crm::Extensions::ContactCallerID::CallerIDType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CONTACT =
              T.let(
                :CONTACT,
                HubspotSDK::Crm::Extensions::ContactCallerID::CallerIDType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Crm::Extensions::ContactCallerID::CallerIDType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
