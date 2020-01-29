# frozen_string_literal: true

module OneSignal
  class Player
    attr_reader :device_type, :email_auth_hash, :identifier, :language, :timezone, :game_version,
      :device_model, :device_os, :ad_id, :sdk, :session_count, :tags, :amount_spent, :created_at,
      :playtime, :badge_count, :last_active, :notification_types, :test_type, :long, :lat, :country,
      :external_user_id

    def initialize **params
      unless params.include?(:device_type)
        raise ArgumentError, 'missing device_type'
      end

      @device_type        = params[:device_type]
      @email_auth_hash    = params[:email_auth_hash]
      @identifier         = params[:identifier]
      @language           = params[:language]
      @timezone           = params[:timezone]
      @game_version       = params[:game_version]
      @device_model       = params[:device_model]
      @device_os          = params[:device_os]
      @ad_id              = params[:ad_id]
      @sdk                = params[:sdk]
      @session_count      = params[:session_count]
      @tags               = params[:tags]
      @amount_spent       = params[:amount_spent]
      @created_at         = params[:created_at]
      @playtime           = params[:playtime]
      @badge_count        = params[:badge_count]
      @last_active        = params[:last_active]
      @notification_types = params[:notification_types]
      @test_type          = params[:test_type]
      @long               = params[:long]
      @lat                = params[:lat]
      @country            = params[:country]
      @external_user_id   = params[:external_user_id]
    end

    def as_json options = nil
      {
        'device_type'        => @device_type,
        'email_auth_hash'    => @email_auth_hash,
        'identifier'         => @identifier,
        'language'           => @language,
        'timezone'           => @timezone,
        'game_version'       => @game_version,
        'device_model'       => @device_model,
        'device_os'          => @device_os,
        'ad_id'              => @ad_id,
        'sdk'                => @sdk,
        'session_count'      => @session_count,
        'tags'               => @tags,
        'amount_spent'       => @amount_spent,
        'created_at'         => @created_at,
        'playtime'           => @playtime,
        'badge_count'        => @badge_count,
        'last_active'        => @last_active,
        'notification_types' => @notification_types,
        'test_type'          => @test_type,
        'long'               => @long,
        'lat'                => @lat,
        'country'            => @country,
        'external_user_id'   => @external_user_id
      }
    end
  end
end
