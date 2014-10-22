require "minitest/autorun"

class TestMinaFingrar < MiniTest::Unit::TestCase
  def setup
    @mina_fingrar = MinaFingrar.new
  end
  def test_nånstans_där
    assert_equal 1, @mina_fingrar.nånstans_där(4)
  end

  def test_hur_mycket_väger_den
    assert_equal [8,9,10,11,12], @mina_fingrar.hur_mycket_väger_den
  end

  def test_hur_många_va_de_små_dvärgarna
    assert_equal 7, @mina_fingrar.hur_många_va_de_små_dvärgarna
  end

  def test_nu_är_de_den_biggest
    assert_equal Float::INFINITY, @mina_fingrar.nu_är_de_den_biggest
  end

  def test_grävmaskiner_och_hjullastare
    assert_equal [], @mina_fingrar.grävmaskiner_och_hjullastare
  end

  def test_nå_jag_har_ingenting_att_dölja
    assert_equal [true, true], @mina_fingrar.nå_jag_har_ingenting_att_dölja
  end

  def test_vad_menar_du_med_de
    assert_instance_of String, @mina_fingrar.vad_menar_du_med_de("biggest")
  end

end
