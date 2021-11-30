# Helper methods
# The #count_left_flips_up_to() method accepts a book's total pages and a target page to flip to as arguments respectfully.
# It the returns the number of flips that you can perform to reach the target page.
# The first constraint is that page one is always stands on its own whiles page two and three, four and five, etc, can viewed when you fliped
# e.g 1-->2 3-->4 5-->...

def count_left_flips_up_to(page_number, from_page = 0)
  return 0 if page_number <= 1
  return 1 if page_number <= 2

  flips = ((page_number - 1 - from_page) / 2)
  page_number.odd? ? flips : flips + 1
end

# The #count_left_flips_down_to() method accepts the book's total pages and the target page to flip to respectfully as arguments.
# The method returns the total number of flips by fliping from the last page down to the target page
def count_right_flips_down_to(last_page, down_to_page)
  return 0 if (down_to_page == last_page)
  return 0 if last_page.odd? && (last_page - 1 == down_to_page)

  flips = last_page.even? ? 1 : 0
  last_page -= 1 if last_page.even?
  flips += ((last_page - down_to_page) / 2)
  flips
end

# Main function
# #pageCount() method returns the minimum flips between from the first page to the target page and from the last page down to the target page.
# The arguments are the total number of pages the book contains and the target page to flip to from both sides.

def pageCount(n, p)
    # Write your code here
  front_count = count_left_flips_up_to(p)
  back_count = count_right_flips_down_to(n, p)
  front_count <= back_count ? front_count : back_count
end
