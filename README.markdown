```irb
contacts$ rails console
Loading development environment (Rails 3.2.2)
ruby-1.9.2-p290 :001 > u = User.create(:name => 'jcasimir')
 (0.1ms)  begin transaction
SQL (11.9ms)  INSERT INTO "users" ("created_at", "name", "updated_at") VALUES (?, ?, ?)  [["created_at", Mon, 05 Mar 2012 13:55:27 UTC +00:00], ["name", "jcasimir"], ["updated_at", Mon, 05 Mar 2012 13:55:27 UTC +00:00]]
 (0.8ms)  commit transaction
=> #<User id: 1, name: "jcasimir", created_at: "2012-03-05 13:55:27", updated_at: "2012-03-05 13:55:27"> 
ruby-1.9.2-p290 :002 > u.contacts
Contact Load (0.1ms)  SELECT "contacts".* FROM "contacts" INNER JOIN "contact_connections" ON "contacts"."id" = "contact_connections"."contact_id" WHERE "contact_connections"."user_id" = 1
=> [] 
ruby-1.9.2-p290 :003 > u.contacts.create(:first_name => "Jeff", :last_name => "Casimir")
 (0.1ms)  begin transaction
SQL (0.6ms)  INSERT INTO "contacts" ("created_at", "first_name", "last_name", "updated_at") VALUES (?, ?, ?, ?)  [["created_at", Mon, 05 Mar 2012 13:56:08 UTC +00:00], ["first_name", "Jeff"], ["last_name", "Casimir"], ["updated_at", Mon, 05 Mar 2012 13:56:08 UTC +00:00]]
SQL (0.6ms)  INSERT INTO "contact_connections" ("contact_id", "created_at", "updated_at", "user_id") VALUES (?, ?, ?, ?)  [["contact_id", 1], ["created_at", Mon, 05 Mar 2012 13:56:08 UTC +00:00], ["updated_at", Mon, 05 Mar 2012 13:56:08 UTC +00:00], ["user_id", 1]]
 (0.9ms)  commit transaction
=> #<Contact id: 1, first_name: "Jeff", last_name: "Casimir", created_at: "2012-03-05 13:56:08", updated_at: "2012-03-05 13:56:08"> 
ruby-1.9.2-p290 :004 > u.contacts.create(:first_name => "Violet", :last_name => "Casimir")
 (0.1ms)  begin transaction
SQL (0.6ms)  INSERT INTO "contacts" ("created_at", "first_name", "last_name", "updated_at") VALUES (?, ?, ?, ?)  [["created_at", Mon, 05 Mar 2012 13:56:16 UTC +00:00], ["first_name", "Violet"], ["last_name", "Casimir"], ["updated_at", Mon, 05 Mar 2012 13:56:16 UTC +00:00]]
SQL (0.3ms)  INSERT INTO "contact_connections" ("contact_id", "created_at", "updated_at", "user_id") VALUES (?, ?, ?, ?)  [["contact_id", 2], ["created_at", Mon, 05 Mar 2012 13:56:16 UTC +00:00], ["updated_at", Mon, 05 Mar 2012 13:56:16 UTC +00:00], ["user_id", 1]]
 (2.0ms)  commit transaction
=> #<Contact id: 2, first_name: "Violet", last_name: "Casimir", created_at: "2012-03-05 13:56:16", updated_at: "2012-03-05 13:56:16"> 
ruby-1.9.2-p290 :005 > u.contacts.create(:first_name => "Megan", :last_name => "Casimir")
 (0.1ms)  begin transaction
SQL (0.5ms)  INSERT INTO "contacts" ("created_at", "first_name", "last_name", "updated_at") VALUES (?, ?, ?, ?)  [["created_at", Mon, 05 Mar 2012 13:56:28 UTC +00:00], ["first_name", "Megan"], ["last_name", "Casimir"], ["updated_at", Mon, 05 Mar 2012 13:56:28 UTC +00:00]]
SQL (0.3ms)  INSERT INTO "contact_connections" ("contact_id", "created_at", "updated_at", "user_id") VALUES (?, ?, ?, ?)  [["contact_id", 3], ["created_at", Mon, 05 Mar 2012 13:56:28 UTC +00:00], ["updated_at", Mon, 05 Mar 2012 13:56:28 UTC +00:00], ["user_id", 1]]
 (2.0ms)  commit transaction
=> #<Contact id: 3, first_name: "Megan", last_name: "Casimir", created_at: "2012-03-05 13:56:28", updated_at: "2012-03-05 13:56:28"> 
ruby-1.9.2-p290 :006 > u.contacts.create(:first_name => "Megan", :last_name => "Keane")
 (0.1ms)  begin transaction
SQL (0.5ms)  INSERT INTO "contacts" ("created_at", "first_name", "last_name", "updated_at") VALUES (?, ?, ?, ?)  [["created_at", Mon, 05 Mar 2012 13:56:34 UTC +00:00], ["first_name", "Megan"], ["last_name", "Keane"], ["updated_at", Mon, 05 Mar 2012 13:56:34 UTC +00:00]]
SQL (0.2ms)  INSERT INTO "contact_connections" ("contact_id", "created_at", "updated_at", "user_id") VALUES (?, ?, ?, ?)  [["contact_id", 4], ["created_at", Mon, 05 Mar 2012 13:56:34 UTC +00:00], ["updated_at", Mon, 05 Mar 2012 13:56:34 UTC +00:00], ["user_id", 1]]
 (2.0ms)  commit transaction
=> #<Contact id: 4, first_name: "Megan", last_name: "Keane", created_at: "2012-03-05 13:56:34", updated_at: "2012-03-05 13:56:34"> 
ruby-1.9.2-p290 :007 > u = User.create(:name => 'myoho')
 (0.1ms)  begin transaction
SQL (0.5ms)  INSERT INTO "users" ("created_at", "name", "updated_at") VALUES (?, ?, ?)  [["created_at", Mon, 05 Mar 2012 13:56:45 UTC +00:00], ["name", "myoho"], ["updated_at", Mon, 05 Mar 2012 13:56:45 UTC +00:00]]
 (1.9ms)  commit transaction
=> #<User id: 2, name: "myoho", created_at: "2012-03-05 13:56:45", updated_at: "2012-03-05 13:56:45"> 
ruby-1.9.2-p290 :008 > u.contacts.create(:first_name => "Megan", :last_name => "The Girlfriend")
 (0.1ms)  begin transaction
SQL (0.6ms)  INSERT INTO "contacts" ("created_at", "first_name", "last_name", "updated_at") VALUES (?, ?, ?, ?)  [["created_at", Mon, 05 Mar 2012 13:56:57 UTC +00:00], ["first_name", "Megan"], ["last_name", "The Girlfriend"], ["updated_at", Mon, 05 Mar 2012 13:56:57 UTC +00:00]]
SQL (0.2ms)  INSERT INTO "contact_connections" ("contact_id", "created_at", "updated_at", "user_id") VALUES (?, ?, ?, ?)  [["contact_id", 5], ["created_at", Mon, 05 Mar 2012 13:56:57 UTC +00:00], ["updated_at", Mon, 05 Mar 2012 13:56:57 UTC +00:00], ["user_id", 2]]
 (2.0ms)  commit transaction
=> #<Contact id: 5, first_name: "Megan", last_name: "The Girlfriend", created_at: "2012-03-05 13:56:57", updated_at: "2012-03-05 13:56:57"> 
ruby-1.9.2-p290 :009 > u = User.first
User Load (1.9ms)  SELECT "users".* FROM "users" LIMIT 1
=> #<User id: 1, name: "jcasimir", created_at: "2012-03-05 13:55:27", updated_at: "2012-03-05 13:55:27"> 
ruby-1.9.2-p290 :010 > u.contacts.where("contacts.first_name LIKE ?", "%J%")
Contact Load (0.2ms)  SELECT "contacts".* FROM "contacts" INNER JOIN "contact_connections" ON "contacts"."id" = "contact_connections"."contact_id" WHERE "contact_connections"."user_id" = 1 AND (contacts.first_name LIKE '%J%')
=> [#<Contact id: 1, first_name: "Jeff", last_name: "Casimir", created_at: "2012-03-05 13:56:08", updated_at: "2012-03-05 13:56:08">] 
ruby-1.9.2-p290 :011 > u.contacts.where("first_name LIKE ?", "%J%")
Contact Load (0.3ms)  SELECT "contacts".* FROM "contacts" INNER JOIN "contact_connections" ON "contacts"."id" = "contact_connections"."contact_id" WHERE "contact_connections"."user_id" = 1 AND (first_name LIKE '%J%')
=> [#<Contact id: 1, first_name: "Jeff", last_name: "Casimir", created_at: "2012-03-05 13:56:08", updated_at: "2012-03-05 13:56:08">] 

```