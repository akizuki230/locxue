class HomeController < ApplicationController
 
  def index
    @eventolast =Evento.last
    @articuloindex = Articulo.order("id DESC").limit(5)
  end

  def blog
    @articulo= Articulo.all
  end

  def actas
  end
  
  def acta
  end

  def contacto
  end

  def estatutos
  end

  def foro
  end

  def integrantes
    @integrante =Integrante.all
  end
 
  def proyectos
    @proyecto = Proyecto.all.order("id DESC")
  end   
  
  def proyecto
  end
  
  def integrante
  end
  
  def eventos
    @evento= Evento.all.order("id DESC")
  end

end
