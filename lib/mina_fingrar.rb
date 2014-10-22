require "mina_fingrar/version"
require "execjs"
require "launchy"

class MinaFingrar
  def initialize
    file = File.join(File.dirname(File.expand_path(__FILE__)), '../js/minafingrar.js')
    puts file
    js_file = File.read file

    @js = ExecJS.compile(js_file)
  end

  def js
    @js
  end

  def nånstans_där(a)
    @js.call("nånstansDär", a)
  end

  def hur_mycket_väger_den
    @js.call("hurMycketVägerDen")
  end

  def hur_många_va_de_små_dvärgarna
    @js.call("hurMångaVaDeSmåDvärgar")
  end

  def nu_är_de_den_biggest
    @js.call("nuÄrDeDenBiggest")
  end

  def grävmaskiner_och_hjullastare
    @js.call("grävmaskinerOchHjullastare")
  end

  def nå_jag_har_ingenting_att_dölja(array)
    @js.call("nåJagHarIngentingAttDölja", array)
  end

  def vad_menar_du_med_de(x)
    @js.call("vadMenarDuMedDe",x)
  end

  def inte
    @js.call("inte")
  end

  def the_jnx
    @js.call("theJnx")
  end

  def jahe_åtta_kilo_minst
    @js.call("JaheÅttaKiloMinst")
  end

  def oj_han_bara_sticker(url, opts)
    Launchy.open(url, opts)
  end
end
