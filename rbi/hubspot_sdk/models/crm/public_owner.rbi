# typed: strong

module HubspotSDK
  module Models
    module CRM
      class PublicOwner < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::CRM::PublicOwner, HubspotSDK::Internal::AnyHash)
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :archived

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(HubspotSDK::CRM::PublicOwner::Type::TaggedSymbol) }
        attr_accessor :type

        sig { returns(Time) }
        attr_accessor :updated_at

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

        sig { returns(T.nilable(T::Array[HubspotSDK::Settings::PublicTeam])) }
        attr_reader :teams

        sig do
          params(teams: T::Array[HubspotSDK::Settings::PublicTeam::OrHash]).void
        end
        attr_writer :teams

        sig { returns(T.nilable(Integer)) }
        attr_reader :user_id

        sig { params(user_id: Integer).void }
        attr_writer :user_id

        sig { returns(T.nilable(Integer)) }
        attr_reader :user_id_including_inactive

        sig { params(user_id_including_inactive: Integer).void }
        attr_writer :user_id_including_inactive

        sig do
          params(
            id: String,
            archived: T::Boolean,
            created_at: Time,
            type: HubspotSDK::CRM::PublicOwner::Type::OrSymbol,
            updated_at: Time,
            email: String,
            first_name: String,
            last_name: String,
            teams: T::Array[HubspotSDK::Settings::PublicTeam::OrHash],
            user_id: Integer,
            user_id_including_inactive: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          archived:,
          created_at:,
          type:,
          updated_at:,
          email: nil,
          first_name: nil,
          last_name: nil,
          teams: nil,
          user_id: nil,
          user_id_including_inactive: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              archived: T::Boolean,
              created_at: Time,
              type: HubspotSDK::CRM::PublicOwner::Type::TaggedSymbol,
              updated_at: Time,
              email: String,
              first_name: String,
              last_name: String,
              teams: T::Array[HubspotSDK::Settings::PublicTeam],
              user_id: Integer,
              user_id_including_inactive: Integer
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubspotSDK::CRM::PublicOwner::Type) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PERSON =
            T.let(:PERSON, HubspotSDK::CRM::PublicOwner::Type::TaggedSymbol)
          QUEUE =
            T.let(:QUEUE, HubspotSDK::CRM::PublicOwner::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::CRM::PublicOwner::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
