def test_telegraf_pkg(Package)
    assert Package("telegraf").is_installed
