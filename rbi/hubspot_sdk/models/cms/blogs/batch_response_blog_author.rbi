# typed: strong

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class BatchResponseBlogAuthor < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor,
                HubspotSDK::Internal::AnyHash
              )
            end

          # Time of batch operation completion.
          sig { returns(Time) }
          attr_accessor :completed_at

          # Results of batch operation.
          sig { returns(T::Array[HubspotSDK::Cms::Blogs::BlogAuthor]) }
          attr_accessor :results

          # Time of batch operation start.
          sig { returns(Time) }
          attr_accessor :started_at

          # Status of batch operation.
          sig do
            returns(
              HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor::Status::TaggedSymbol
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

          # Response object for batch operations on blog authors.
          sig do
            params(
              completed_at: Time,
              results: T::Array[HubspotSDK::Cms::Blogs::BlogAuthor::OrHash],
              started_at: Time,
              status:
                HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor::Status::OrSymbol,
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
                results: T::Array[HubspotSDK::Cms::Blogs::BlogAuthor],
                started_at: Time,
                status:
                  HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor::Status::TaggedSymbol,
                links: T::Hash[Symbol, String],
                requested_at: Time
              }
            )
          end
          def to_hash
          end

          # Status of batch operation.
          module Status
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor::Status
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            PENDING =
              T.let(
                :PENDING,
                HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor::Status::TaggedSymbol
              )
            PROCESSING =
              T.let(
                :PROCESSING,
                HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor::Status::TaggedSymbol
              )
            CANCELED =
              T.let(
                :CANCELED,
                HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor::Status::TaggedSymbol
              )
            COMPLETE =
              T.let(
                :COMPLETE,
                HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor::Status::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Cms::Blogs::BatchResponseBlogAuthor::Status::TaggedSymbol
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
