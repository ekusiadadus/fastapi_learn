.phony: print-usage 

print-usage:
	# usage: make [ up ]

up:
	uvicorn app.main:app --reload

test:
	pytest -s -v