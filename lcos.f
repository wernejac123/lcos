C PROGRAM TO CALCULATE ANGLES AND SIDES OF A TRIANGLE USING THE
C LAWS OF COSINES

      PROGRAM LCOS
      IMPLICIT NONE
      CHARACTER CIN
      DOUBLEPRECISION A,B,C,X,Y,Z,PI
      PARAMETER(PI=3.141592654)
C A,B,C SIDES
C X,Y,Z ANGLES IN DEGREES

      WRITE(*,*) 'LAWS OF COSINES'
      WRITE(*,*)

C PRINT LABELLED TRIANGLE
      CALL PT()

C WHAT ARE WE LOOKING FOR
10    WRITE(*,*) 'SOLVE FOR:'
      READ(*,*) CIN
      IF(CIN .EQ. 'A') THEN
        WRITE(*,*) 'B,C,X:'
        READ(*,*) B,C,X

C CONVERT X FROM DEGREES TO RADIANS
        X=X*(PI/180.0)

        A=DSQRT(B**2+C**2-2.0*B*C*DCOS(X))
        WRITE(*,900) 'A=',A
      ELSEIF(CIN .EQ. 'B') THEN
        WRITE(*,*) 'A,C,Y'
        READ(*,*) A,C,Y

C CONVERT Y FROM DEGREES TO RADIANS
        Y=Y*(PI/180.0)

        B=DSQRT(A**2+C**2-2.0*A*C*DCOS(Y))
        WRITE(*,900) 'B=',B
      ELSEIF(CIN .EQ. 'C') THEN
        WRITE(*,*) 'A,B,Z'
        READ(*,*) A,B,Z
 
C CONVERT Z FROM DEGREES TO ANGLES
        Z=Z*(PI/180.0)

        C=DSQRT(A**2+B**2-2.0*A*B*DCOS(Z))
        WRITE(*,900) 'C=',C
      ELSEIF(CIN .EQ. 'X') THEN
        WRITE(*,*) 'A,B,C'
        READ(*,*) A,B,C
        X=DACOS((A**2-B**2-C**2)/(-2.0*B*C))
         
C CONVERT X FROM RADIANS TO DEGREES
        X=X*(180.0/PI)

        WRITE(*,950) 'X=',X
      ELSEIF(CIN .EQ. 'Y') THEN
        WRITE(*,*) 'A,B,C'
        READ(*,*) A,B,C
        Y=DACOS((B**2-A*2-C**2)/(-2.0*A*C))

C CONVERT Y FROM RADIANS TO DEGREES
        Y=Y*(180.0/PI)

        WRITE(*,950) 'Y=',Y
      ELSEIF(CIN .EQ. 'Z') THEN
        WRITE(*,*) 'A,B,C'
        READ(*,*) A,B,C
        Z=DACOS((C**2-A**2-B**2)/(-2.0*A*B))

C CONVERT Z FROM RADIANS TO DEGREES
        Z=Z*(180.0/PI)

        WRITE(*,950) 'Z=',Z
      ELSE
        WRITE(*,*) 'INVALID'
        GOTO 10
      ENDIF

900   FORMAT(A2,X,F12.7)
950   FORMAT(A2,X,F12.7,' DEGS')
      STOP
      END
