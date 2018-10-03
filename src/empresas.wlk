import profesionales.*
import universidades.*
object empresa{
	var property honorarioDeReferencia
	var profesionales=[]
	var provinciasQueCubreAlguienYFaltaCubrir=[]
	
	method contratar(prof){
		profesionales.add(prof)
	}
	method profesionalesCaros(){
		return profesionales.filter({profesional =>profesional.honorariosPorHora()>self.honorarioDeReferencia()})
	}
	
	method universidadesFormadoras(){
		return profesionales.map({profesional=> profesional.universidad()}).asSet()
	}
	
	method profesionalMasBarato(){
		return profesionales.min({profesional=>profesional.honorariosPorHora()})
	}
	
	method provinciaCubierta(prov) {
		return profesionales.any({profesional=>profesional.provinciasDondePuedeTrabajar().contains(prov)})
	}
	
	method estudiaronEn(univ){
		return profesionales.count({profesional=>profesional.universidad()==univ})
	}
	
	method esPocoAtractivo(prof){
		provinciasQueCubreAlguienYFaltaCubrir= profesionales.map({profesional=>profesional.provinciaDondePuedeTrabajar()}).asSet().difference(prof.provinciasDondePuedeTrabajar())
		if(provinciasQueCubreAlguienYFaltaCubrir /= #{}){
			return true
			
		}else if()
		//sin terminar
		return
	}
	
	
}
