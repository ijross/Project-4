CC         = cc
CATSOURCE   = metacat.c
CATEXECBIN  = metacat

TAGSOURCE   = metatag.c
TAGEXECBIN  = metatag 

all : ${CATEXECBIN} ${TAGEXECBIN}

${CATEXECBIN} : ${CATSOURCE:.c=.o}
	${CC} -o  $@ ${CATSOURCE:.c=.o} 

${TAGEXECBIN} : ${TAGSOURCE:.c=.o}
	${CC} -o  $@ ${TAGSOURCE:.c=.o} 

%.o : %.c
	${CC} -c  $<

clean:
	-rm ${CATSOURCE:.c=.o} ${TAGSOURCE:.c=.o} ${CATEXECBIN} ${TAGEXECBIN}
