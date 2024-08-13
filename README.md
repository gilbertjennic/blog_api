Blog API


Overview
A basic Blog API built with Ruby on Rails and PostgreSQL, showcasing API development and database design.


Getting Started

1. Clone the Repository
    `git clone <your_github_repo_url>`
    `cd blog_api`

2. Install Dependencies
    `bundle install`

3. Setup the Database
    `rails db:create`
    `rails db:migrate`

4. Run the Server
    `rails server`

The server will run at http://localhost:3000.


API Endpoints

GET /posts - List all posts.

GET /posts/
- Show a specific post.

POST /posts - Create a new post (requires authentication).


Testing

Run tests with:
    `rails test`