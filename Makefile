all:
	@cargo vendor > config
	@grep -E "checksum.*mesalock|checksum.*crates" Cargo.lock | cut -d ' ' -f2,3 | column -t > README.txt
	@./lic.py | sort > licenses.txt
test:
	@cargo vendor > config
	@grep -E "checksum.*mesalock|checksum.*crates" Cargo.lock | cut -d ' ' -f2,3 > README.txt
clean:
	@rm -rf vendor
	@rm Cargo.lock
