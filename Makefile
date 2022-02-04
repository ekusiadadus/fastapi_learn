.phony: print-usage 

print-usage:
	# usage: make [ up ]

up:
	uvicorn main:app --reload