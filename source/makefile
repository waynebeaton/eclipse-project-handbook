all : \
	../output/eclipse.html \
	../output/polarsys.html \
	../output/locationtech.html \
	directories \
	images
.PHONY : all

directories : ../output ../output/images

../output : 
	mkdir -p ../output
	
../output/images : ../output images/*
	mkdir -p ../output/images
	cp ../images/* ../output/images/

# IMAGES

images : \
	images/project-creation.png \
	images/post-creation.png \
	images/release-cycle.png \
	images/release-review.png \
	images/paperwork.png \
	images/cq-workflow.png \
	images/project-lifecycle.png \
	images/ip-log-generator.png
.PHONY : all

images/project-creation.png : dot/project-creation.dot
	dot -Tpng dot/project-creation.dot > images/project-creation.png
	
images/post-creation.png : dot/post-creation.dot
	dot -Tpng dot/post-creation.dot > images/post-creation.png

images/release-cycle.png : dot/release-cycle.dot
	dot -Tpng dot/release-cycle.dot > images/release-cycle.png

images/release-review.png : dot/release-review.dot
	dot -Tpng dot/release-review.dot > images/release-review.png
	
images/paperwork.png : dot/paperwork.dot
	dot -Tpng dot/paperwork.dot > images/paperwork.png

images/cq-workflow.png : dot/cq-workflow.dot
	dot -Tpng dot/cq-workflow.dot > images/cq-workflow.png
	
images/project-lifecycle.png : dot/project-lifecycle.dot
	dot -Tpng dot/project-lifecycle.dot > images/project-lifecycle.png
	
images/ip-log-generator.png : dot/ip-log-generator.dot
	dot -Tpng dot/ip-log-generator.dot > images/ip-log-generator.png

# TODO Generate the callouts?
# for i in {1..5}; do convert -size 20x20 xc:none -fill black -draw 'translate 9,9 circle 0,0 9,0' -font "Helvetica" -pointSize 12 -weight normal -fill white -gravity center -strokewidth 0 -draw "text 0,0 \"$i\"" $i.png; done

# ECLIPSE

#../output/eclipse.book.xml : ../output eclipse.adoc config.adoc chapters/* images
#	asciidoctor -b docbook -d book -o ../output/eclipse.book.xml eclipse.adoc
	
../output/eclipse.html : ../output eclipse.adoc config.adoc chapters/* images
	asciidoctor -a data-uri -a icons -a stylesheet=handbook.css -b html5 -d book -o ../output/eclipse.html eclipse.adoc

#../output/eclipse.html : ../output ../output/eclipse.book.xml
#	xsltproc -o ../output/eclipse.html /usr/share/sgml/docbook/xsl-ns-stylesheets/xhtml-1_1/docbook.xsl ../output/eclipse.book.xml

#../output/eclipse.pdf : ../output ../output/eclipse.book.xml
#	xsltproc -xinclude -o ../output/eclipse.fo \
#		--param toc.section.depth 1 \
#		--param ulink.footnotes 1 \
#		--param admon.graphics 1 \
#		--xinclude \
#		/usr/share/sgml/docbook/xsl-ns-stylesheets/fo/docbook.xsl ../output/eclipse.book.xml
#	fop -v ../output/eclipse.fo -pdf ../output/eclipse.pdf
#	rm ../output/eclipse.fo


# POLARSYS

#../output/polarsys.book.xml : ../output polarsys.adoc config.adoc chapters/* images
#	asciidoctor -b docbook -d book -o ../output/polarsys.book.xml polarsys.adoc
	
../output/polarsys.html : ../output polarsys.adoc config.adoc chapters/* images
	asciidoctor -a data-uri -a icons -a stylesheet=handbook.css -b html5 -d book -o ../output/polarsys.html polarsys.adoc

#../output/polarsys.pdf : ../output ../output/polarsys.book.xml
#	xsltproc -xinclude -o ../output/polarsys.fo \
#		--param toc.section.depth 1 \
#		--param ulink.footnotes 1 \
#		--param admon.graphics 1 \
#		/usr/share/sgml/docbook/xsl-ns-stylesheets/fo/docbook.xsl ../output/polarsys.book.xml
#	fop -v ../output/polarsys.fo -pdf ../output/polarsys.pdf
#	rm ../output/polarsys.fo
	
# LOCATIONTECH

#../output/locationtech.book.xml : ../output locationtech.adoc config.adoc chapters/* images
#	asciidoctor -b docbook -d book -o ../output/locationtech.book.xml locationtech.adoc
	
../output/locationtech.html : ../output locationtech.adoc config.adoc chapters/* images/*
	asciidoctor -a data-uri -a icons -a stylesheet=handbook.css -b html5 -d book -o ../output/locationtech.html locationtech.adoc

#../output/locationtech.pdf : ../output ../output/locationtech.book.xml
#	xsltproc -xinclude -o ../output/locationtech.fo \
#		--param toc.section.depth 1 \
#		--param ulink.footnotes 1 \
#		--param admon.graphics 1 \
#		/usr/share/sgml/docbook/xsl-ns-stylesheets/fo/docbook.xsl ../output/locationtech.book.xml
#	fop -v ../output/locationtech.fo -pdf ../output/locationtech.pdf
#	rm ../output/locationtech.fo