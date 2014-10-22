var nånstansDär = function(a) {
	var min = a - 2
	var max = a + 2
	
	if (min < 0) {
        return Math.round(min + Math.random() * (Math.abs(min)+max));
    }else {
        return Math.round(min + Math.random() * max);
    }
}

var hurMycketVägerDen = function() {
	return [8,9,10,11,12]
}

var hurMångaVaDeSmåDvärgar = function(){
	return 7
}

var nuÄrDeDenBiggest = function(){
	return Infinity
}

var grävmaskinerOchHjullastare = function(){
	return ['L90','L150','87..','L180','330','972an','994an']
}

var nåJagHarIngentingAttDölja = function(array){
	return array.map(function(x){
		return true;
	});
}

var vadMenarDuMedDe = function(x){
	return ({}).toString.call(x).match(/\s([a-zA-Z]+)/)[1].toLowerCase()
}

var inte = function(){
	return false
}

var theJnx = function(){
	return ['Hallå Hallå, The Jnx',
	'Hallå där kött och blåbär',
	'Hallåjsan, Hallåjsan',
	'Tjaba Tjena Hallå.. The Jnx',
	'Tjena, Tjena, Tjena']
}

var JaheÅttaKiloMinst = function(){
	return Math.round(8 + Math.random() * 16)+'kg';
}

var ojHanBaraSticker = function(url){
	window.location.replace(url);
}