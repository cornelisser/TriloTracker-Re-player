GLASS ?= glass
OPENMSX ?= openmsx
OUTPUT = ttplay.rom

all: $(OUTPUT) verify

$(OUTPUT): main.asm ../code_glass/*.asm TEST2026.asm
	$(GLASS) main.asm $(OUTPUT) ttplay.sym

verify: $(OUTPUT)
	@ROM_SIZE=$$(wc -c < $(OUTPUT) | tr -d ' '); \
	if [ "$$ROM_SIZE" -ne 32768 ]; then \
		echo "Error: ROM size is $$ROM_SIZE bytes (expected 32768 bytes)"; \
		exit 1; \
	fi; \
	echo "ROM built successfully: $(OUTPUT) ($$ROM_SIZE bytes)"

run: $(OUTPUT)
	$(OPENMSX) -machine C-BIOS_MSX1 -cart $(OUTPUT) -romtype KonamiSCC

clean:
	rm -f $(OUTPUT) ttplay.sym
