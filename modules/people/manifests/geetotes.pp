class people::geetotes {
  include projects::all
  include mysql
  mysql::db { 'mydb': }
}
