class projects::team1sales {

  boxen::project { 'team1sales':
    ruby   => '2.1.2',
    dotenv => true,
    postgresql  => true,
    elasticsearch => true,
    nginx  => true,
    source => 'revelrylabs/team1sale'
  }
}
