module OauthHelper
  def ldap_enabled?
    Devise.omniauth_providers.include?(:ldap)
  end

  def default_providers
    [:twitter, :github, :google_oauth2, :ldap, :salesforce]
  end

  def enabled_oauth_providers
    Devise.omniauth_providers
  end

  def enabled_social_providers
    enabled_oauth_providers.select do |name|
      [:twitter, :github, :google_oauth2, :salesforce].include?(name.to_sym)
    end
  end
end
