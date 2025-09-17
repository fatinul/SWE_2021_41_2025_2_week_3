FROM ubuntu:latest
RUN apt-get update && apt-get install -y python3 python3-pip

# Run main.py
CMD ["bash", "-c", "python3 -c '\
def isHappy(n): \n\
  seen = set() \n\
  while n != 1 and n not in seen: \n\
      seen.add(n) \n\
      n = sum(int(digits)**2 for digits in str(n)) \n\
  if n != 1: \n\
    return False \n\
  elif n == 1: \n\
    return True \n\
\n\
print(isHappy(19)) \n\
print(isHappy(2)) \n\
'"]