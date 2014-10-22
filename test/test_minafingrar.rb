require "minitest/autorun"
require "mina_fingrar"

class TestMinaFingrar < MiniTest::Unit::TestCase
  def setup
    @mina_fingrar = MinaFingrar.new
  end

  def test_nånstans_där
    assert_kind_of Integer, @mina_fingrar.nånstans_där(4)
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
    assert_equal ["L90", "L150", "87..", "L180", "330", "972an", "994an"], @mina_fingrar.grävmaskiner_och_hjullastare
  end

  def test_nå_jag_har_ingenting_att_dölja
    assert_equal [true, true], @mina_fingrar.nå_jag_har_ingenting_att_dölja(["biggest", 4])
  end

  def test_vad_menar_du_med_de
    assert_kind_of String, @mina_fingrar.vad_menar_du_med_de("biggest")
  end

  def test_inte
    assert_equal false, @mina_fingrar.inte
  end

  def test_the_jnx
    assert_kind_of Array, @mina_fingrar.the_jnx
  end

  def test_jahe_åtta_kilo_minst
    assert_match %r%kg%, @mina_fingrar.jahe_åtta_kilo_minst
  end

  def test_oj_han_bara_sticker
    assert_output "/usr/bin/open http://localhost\n" do
      @mina_fingrar.oj_han_bara_sticker("http://localhost", dry_run: true)
    end
  end

end
