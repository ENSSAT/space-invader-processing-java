PROCESSING_JAVA:=/usr/share/processing/processing-3.5.4/processing-java
SKETCH_NAME:=space_invader

start:
	$(PROCESSING_JAVA) --sketch=$(SKETCH_NAME)/ --run
