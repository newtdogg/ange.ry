# feature "User ratings" do
#   scenario "a user can view all of their ratings" do
#     sign_up
#     create_a_restaurant
#     visit("/restaurants/1/ratings/new")
#     leave_a_review
#     visit("/users/1/ratings")
#     expect(page).to have_content("Review: A generic review")
#   end
#
# end
