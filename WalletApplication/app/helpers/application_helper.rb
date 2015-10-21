module ApplicationHelper
def get_date()
    time = Date.today
    "#{time.month}/#{time.day}/#{time.year}"
  end
end
