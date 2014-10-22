require "minafingrar/version"

class MinaFingrar
  def initialize
    js_file = File.read "../js/minafingrar.js"
    @js = ExecJS.compile(js_file)
  end

  def nånstans_där(a)
    @js.call("nånstansDär('#{a}')")
  end

  def hur_mycket_väger_den
    @js.call("hurMycketVägerDen()")
  end

  def hur_många_va_de_små_dvärgarna
    @js.call("hurMångaVaDeSmåDvärgar()")
  end

  def nu_är_de_den_biggest
    @js.call("nuÄrDeDenBiggest()")
  end

  def grävmaskiner_och_hjullastare
    @js.call("grävmaskinerOchHjullastare()")
  end

  def nå_jag_har_ingenting_att_dölja(array)
    @js.call("nåJagHarIngentingAttDölja(#{array.to_json})")
  end

  def vad_menar_du_med_de(x)
    @js.call("vadMenarDuMedDe('#{x}')")
  end

  def inte
    @js.call("inte()")
  end

  def the_jnx
    @js.call("theJnx()")
  end

  def jahe_åtta_kilo_minst
    @js.call("JaheÅttaKiloMinst()")
  end

  def oj_han_bara_sticker(url)
    @js.call("ojHanBaraSticker('#{url}')")
  end
end
