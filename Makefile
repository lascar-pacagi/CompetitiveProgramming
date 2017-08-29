OBJ = obj
PDFLATEX_FLAGS = -halt-on-error -output-directory $(OBJ)
SOURCES = src/competitive_programming.tex
IMG     = $(wildcard src/*.pdf)
IMG    += $(wildcard src/*.jpg)
IMG    += $(wildcard src/*.png)
COMMAND = TEXINPUTS=src:$(TEXINPUTS) pdflatex $(PDFLATEX_FLAGS) $(SOURCES)

all: $(OBJ) $(SOURCES) $(IMG)
	$(COMMAND) && $(COMMAND) && $(COMMAND)

$(OBJ):
	mkdir -p $(OBJ)

clean:
	rm -rf $(OBJ)
