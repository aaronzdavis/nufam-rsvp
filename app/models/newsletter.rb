class Newsletter
  def api
    Gibbon::API.throws_exceptions = false
    @api ||= Gibbon::API.new(ENV['MAILCHIMP_API_KEY'])
  end

  def lists
    api.lists
  end

  def find_by_email(list_id, email)
    lists.member_info({ id: list_id, emails: [{email: email}] })
  end

  def subscribed?(email)
    find_by_email(email)["success_count"] == 1
  end

  def subscribe(list_id, email, first_name, last_name)
    lists.subscribe(
      id: list_id,
      email: { email: email },
      merge_vars: { FNAME: first_name, LNAME: last_name },
      double_optin: true
    )
  end
end