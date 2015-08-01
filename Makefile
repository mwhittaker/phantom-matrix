
all: main.byte

main.byte: main.ml linAlg.ml
	corebuild main.byte

clean:
	rm -r _build
	rm main.byte
