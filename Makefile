all: index.html

index.html: slides.rst openstack-slides.css
	hovercraft slides.rst .


clean:
	rm index.html
	rm -rf js
