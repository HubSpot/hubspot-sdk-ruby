# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        class CardMigrateViewsResponse < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Crm::Extensions::CardMigrateViewsResponse,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # A human readable message describing the progress of the migration.
          sig { returns(String) }
          attr_accessor :message

          # The timestamp for when the migration ended.
          sig { returns(T.nilable(Integer)) }
          attr_reader :ended_at

          sig { params(ended_at: Integer).void }
          attr_writer :ended_at

          # The number of portals that remain to be swapped from the Legacy CRM Card to the
          # App Card
          sig { returns(T.nilable(Integer)) }
          attr_reader :remaining_portal_count

          sig { params(remaining_portal_count: Integer).void }
          attr_writer :remaining_portal_count

          # The timestamp for when the migration started.
          sig { returns(T.nilable(Integer)) }
          attr_reader :started_at

          sig { params(started_at: Integer).void }
          attr_writer :started_at

          # The total number of portals that have access to the Legacy CRM Card
          sig { returns(T.nilable(Integer)) }
          attr_reader :total_portal_count

          sig { params(total_portal_count: Integer).void }
          attr_writer :total_portal_count

          sig do
            params(
              message: String,
              ended_at: Integer,
              remaining_portal_count: Integer,
              started_at: Integer,
              total_portal_count: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # A human readable message describing the progress of the migration.
            message:,
            # The timestamp for when the migration ended.
            ended_at: nil,
            # The number of portals that remain to be swapped from the Legacy CRM Card to the
            # App Card
            remaining_portal_count: nil,
            # The timestamp for when the migration started.
            started_at: nil,
            # The total number of portals that have access to the Legacy CRM Card
            total_portal_count: nil
          )
          end

          sig do
            override.returns(
              {
                message: String,
                ended_at: Integer,
                remaining_portal_count: Integer,
                started_at: Integer,
                total_portal_count: Integer
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
