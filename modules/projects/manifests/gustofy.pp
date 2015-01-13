class projects::gustofy {

  boxen::project { 'gustofy':
    ruby   => '2.1.2',
    postgresql  => true,
    elasticsearch => true,
    nginx  => true,
    source => 'revelrylabs/gustofy'
  }
}
