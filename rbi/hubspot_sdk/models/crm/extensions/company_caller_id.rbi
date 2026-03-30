# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Extensions
        class CompanyCallerID < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Extensions::CompanyCallerID,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Specifies the type of caller ID, which is set to 'COMPANY' by default.
          sig do
            returns(
              HubspotSDK::Crm::Extensions::CompanyCallerID::CallerIDType::TaggedSymbol
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

          # The name associated with the company caller ID.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          sig do
            params(
              caller_id_type:
                HubspotSDK::Crm::Extensions::CompanyCallerID::CallerIDType::OrSymbol,
              object_coordinates:
                HubspotSDK::Crm::Extensions::ObjectCoordinates::OrHash,
              name: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Specifies the type of caller ID, which is set to 'COMPANY' by default.
            caller_id_type:,
            object_coordinates:,
            # The name associated with the company caller ID.
            name: nil
          )
          end

          sig do
            override.returns(
              {
                caller_id_type:
                  HubspotSDK::Crm::Extensions::CompanyCallerID::CallerIDType::TaggedSymbol,
                object_coordinates:
                  HubspotSDK::Crm::Extensions::ObjectCoordinates,
                name: String
              }
            )
          end
          def to_hash
          end

          # Specifies the type of caller ID, which is set to 'COMPANY' by default.
          module CallerIDType
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Crm::Extensions::CompanyCallerID::CallerIDType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COMPANY =
              T.let(
                :COMPANY,
                HubspotSDK::Crm::Extensions::CompanyCallerID::CallerIDType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Crm::Extensions::CompanyCallerID::CallerIDType::TaggedSymbol
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
