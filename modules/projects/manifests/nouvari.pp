class projects::novauri {
  boxen::project { 'novauri':
    ruby   => '2.0.0',
    postgresql  => true,
    nginx  => true,
    source => 'revelrylabs/novauri'
  }
}
