# Model Fields:
# email: string
# password_digest: string
# password: string virtual
# password_confirmation: string virtual
# Virtual methods added by has_secure_password
class User < ApplicationRecord
    has_secure_password

    # Validate that the email field is not null
    validates :email, presence: true
end
