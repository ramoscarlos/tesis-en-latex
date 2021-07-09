#!/bin/bash

# Función para proteger los errores de eliminación cuando no hay
# archivos que eliminar (odio que se muestren errores o advertencias).
function remover_archivos
{
	local extension="*.$1"
	local count=`ls -1 $extension 2> /dev/null | wc -l`

	if [ $count != 0 ]; then
		rm $extension
	fi
}

# Lista de extensiones de archivos generados por LaTeX.
remover_archivos "aux"
remover_archivos "fdb_latexmk"
remover_archivos "fls"
remover_archivos "log"
remover_archivos "out"
remover_archivos "synctex.gz"
remover_archivos "toc" # Tabla de contenido.
remover_archivos "lof" # Lista de figuras.
remover_archivos "lot" # Lista de tablas.
remover_archivos "lol" # Lista de listados.
remover_archivos "bbl" # Archivo de bibliografía.
remover_archivos "blg" # BibTeX - desconozco su función.