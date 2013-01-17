require "vmc/cli/start/base"

module VMC::Start
  class Register < Base
    desc "Create a user and log in"
    group :start, :hidden => true
    input :email, :desc => "Desired email", :argument => :optional
    input :password, :desc => "Desired password"
    input :verify, :desc => "Repeat password"
    input :login, :desc => "Automatically log in?", :default => true
    def register
      show_context

      email = input[:email]
      password = input[:password]

      if !force? && password != input[:verify]
        fail "Passwords do not match."
      end

      pw_strength = client.base.uaa.password_score(password)
      msg = "Your password strength is: #{pw_strength}"

      if pw_strength == :weak
        fail msg
      else
        line msg

        with_progress("Creating user") do
          client.register(email, password)
        end

        if input[:login]
          invoke :login, :username => email, :password => password
        end
      end
    end

    private

    def ask_email
      ask("Email")
    end

    def ask_password
      ask("Password", :echo => "*", :forget => true)
    end

    def ask_verify
      ask("Confirm Password", :echo => "*", :forget => true)
    end
  end
end
