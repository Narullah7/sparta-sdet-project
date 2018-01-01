class Planet
  # Creates instance variables and also makes them visible and editable outside the object.
  attr_accessor :id, :title, :body, :body2, :body3, :image, :image2

  # Save is an instance method that we can use to create or update a post
  def save

    # Assign the Postgre connect to variable
    conn = Planet.open_connection

    # If the Post instance has an it means it already exists so we are going to update an existing record
    if(self.id)
      sql = "UPDATE planet SET title='#{self.title}', body='#{self.body}', body2='#{self.body2}', body3='#{self.body3}', image='#{self.image}', image2='#{self.image2}' WHERE id = #{self.id}"
    # If there Post has no id this means the post is new and needs creating
    else
      sql = "INSERT INTO planet (title, body, body2, body3, image, image2) VALUES ('#{self.title}', '#{self.body}', '#{self.body2}', '#{self.body3}', '#{self.image}','#{self.image2}')"
    end

    # Execute the sql in Postgres
    conn.exec(sql)
  end

  # Open connection is Class method that we will use to open a connection the Postgres database. This is not tied to instance of a class but to the class itself
  def self.open_connection
    # Assign the Postgre connect to variable
    conn = PG.connect(dbname: "blog")
  end

  # Class method the get all our post from the db
  def self.all

    # Assign the Postgre connect to variable
    conn = self.open_connection

    # SQL statement to select our posts and order them
    sql = "SELECT id,title,body,body2,body3,image,image2 FROM planet ORDER BY id ASC"

    # Execute the sql in Postgres
    results = conn.exec(sql)

    # Create our formatted object by mapping through it and using our hydrate method to get the structure correct
    planets = results.map do |planet|
      self.hydrate(planet)
    end

  end

  # Class method the will retrieve one post from the db
  def self.find(id)

    # Assign the Postgre connect to variable
    conn = self.open_connection

    # SQL statement to select one post and limit to one
    sql = "SELECT * FROM planet WHERE id =#{id} LIMIT 1"

    # Execute the sql in Postgres
    planets = conn.exec(sql)

    # Create our formatted object by passing it through our hydrate method to get the structure correct
    planet = self.hydrate(planets[0])

    # Return the post
    planet

  end

  # A class method to destroy a post from the DB
  def self.destroy(id)

    # Assign the Postgre connect to variable
    conn = self.open_connection

    # SQL statement to delete one post with the id we passed in
    sql = "DELETE FROM planet WHERE id = #{id}"

    # Execute the sql in Postgres
    conn.exec(sql)

  end

  # Hydrate is Class method that we can use to format our data that we get back from the PG gem. The PG gem returns the data as a weird object type called PG:Result.
  def self.hydrate(planet_data)

    # Create an instace of a post
    planet = Planet.new

    # Set the instance variables to be the ones from the PG:Result object so we can use them later in our templates
    planet.id = planet_data['id']
    planet.title = planet_data['title']
    planet.body = planet_data['body']
    planet.body2 = planet_data['body2']
    planet.body3 = planet_data['body3']
    planet.image = planet_data['image']
    planet.image2 = planet_data['image2']

    # Return the post
    planet
  end

end
