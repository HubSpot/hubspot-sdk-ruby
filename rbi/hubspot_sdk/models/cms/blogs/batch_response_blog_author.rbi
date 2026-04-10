# typed: strong

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class BatchResponseBlogAuthor < HubSpotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Cms::Blogs::BatchResponseBlogAuthor,
                HubSpotSDK::Internal::AnyHash
              )
            end

          # Time of batch operation completion.
          sig { returns(Time) }
          attr_accessor :completed_at

          # Results of batch operation.
          sig { returns(T::Array[HubSpotSDK::Cms::Blogs::BlogAuthor]) }
          attr_accessor :results

          # Time of batch operation start.
          sig { returns(Time) }
          attr_accessor :started_at

          # Status of batch operation.
          sig do
            returns(
              HubSpotSDK::Cms::Blogs::BatchResponseBlogAuthor::Status::OrSymbol
            )
          end
          attr_accessor :status

          # Links associated with batch operation.
          sig { returns(T.nilable(T::Hash[Symbol, String])) }
          attr_reader :links

          sig { params(links: T::Hash[Symbol, String]).void }
          attr_writer :links

          # Time of batch operation request.
          sig { returns(T.nilable(Time)) }
          attr_reader :requested_at

          sig { params(requested_at: Time).void }
          attr_writer :requested_at

          sig do
            params(
              completed_at: Time,
              results: T::Array[HubSpotSDK::Cms::Blogs::BlogAuthor::OrHash],
              started_at: Time,
              status:
                HubSpotSDK::Cms::Blogs::BatchResponseBlogAuthor::Status::OrSymbol,
              links: T::Hash[Symbol, String],
              requested_at: Time
            ).returns(T.attached_class)
          end
          def self.new(
            # Time of batch operation completion.
            completed_at:,
            # Results of batch operation.
            results:,
            # Time of batch operation start.
            started_at:,
            # Status of batch operation.
            status:,
            # Links associated with batch operation.
            links: nil,
            # Time of batch operation request.
            requested_at: nil
          )
          end

          sig do
            override.returns(
              {
                completed_at: Time,
                results: T::Array[HubSpotSDK::Cms::Blogs::BlogAuthor],
                started_at: Time,
                status:
                  HubSpotSDK::Cms::Blogs::BatchResponseBlogAuthor::Status::OrSymbol,
                links: T::Hash[Symbol, String],
                requested_at: Time
              }
            )
          end
          def to_hash
          end

          # Status of batch operation.
          module Status
            extend HubSpotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubSpotSDK::Cms::Blogs::BatchResponseBlogAuthor::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            CANCELED =
              T.let(
                :CANCELED,
                HubSpotSDK::Cms::Blogs::BatchResponseBlogAuthor::Status::TaggedSymbol
              )
            COMPLETE =
              T.let(
                :COMPLETE,
                HubSpotSDK::Cms::Blogs::BatchResponseBlogAuthor::Status::TaggedSymbol
              )
            PENDING =
              T.let(
                :PENDING,
                HubSpotSDK::Cms::Blogs::BatchResponseBlogAuthor::Status::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :PROCESSING,
                HubSpotSDK::Cms::Blogs::BatchResponseBlogAuthor::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubSpotSDK::Cms::Blogs::BatchResponseBlogAuthor::Status::TaggedSymbol
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
