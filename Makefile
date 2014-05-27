CC        = cc
CSOURCE   = test.c
EXECBIN   = hello 

all : ${EXECBIN}

${EXECBIN} : ${CSOURCE:.c=.o}
	${CC} -o  $@ ${CSOURCE:.c=.o} 

%.o : %.c
	${CC} -c  $<

clean:
	-rm ${CSOURCE:.c=.o} ${EXECBIN}
