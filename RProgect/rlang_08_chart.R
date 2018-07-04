##SQL30 바차트 : 구단승리순으로 순위매기기 

db_win_count<-dbGetQuery(conn, 
                         "SELECT 
    A.WINNER,
    COUNT(A.WINNER) WINCOUNT
FROM(SELECT
        K.SCHE_DATE 경기날짜,
        CASE
            WHEN K.HOME_SCORE > K.AWAY_SCORE THEN HT.TEAM_NAME
            WHEN K.AWAY_SCORE > K.HOME_SCORE THEN AT.TEAM_NAME
            ELSE '무승부'
        END WINNER
     FROM SCHEDULE K
            JOIN TEAM HT
                ON K.HOMETEAM_ID LIKE HT.TEAM_ID
            JOIN TEAM AT
                ON K.AWAYTEAM_ID LIKE AT.TEAM_ID
     WHERE
        K.GUBUN LIKE 'Y'
        AND K.SCHE_DATE LIKE '2012%'
    )A
WHERE A.WINNER NOT LIKE '무승부'
GROUP BY A.WINNER
ORDER BY WINCOUNT DESC
"
                         )
db_win_count


barplot(db_win_count[,2],names.arg=db_win_count[,1],main = "2012 WIN COUNT",xlab = "TEAM NAME",ylab = "COUNT",border="blue")

##SQL29 파이차트 : 좌석수가 많은 대로 스타디움 순서 매기기 
db_seat_count<-dbGetQuery(conn,"SELECT
                         ROWNUM RANK,
                         A.*
                         FROM 
                         (SELECT S.STADIUM_NAME STADIUM,
                         s.SEAT_COUNT SEAT_COUNT
                         FROM STADIUM S
                         ORDER BY S.SEAT_COUNT DESC) A") 
db_seat_count

labels <- c(db_seat_count$STADIUM)
p1<-pie(db_seat_count$SEAT_COUNT,labels, cex=0.55)

##SQL28 점수차별로 분류한 경기수. 1점차경기 3경기,...6점차경기 1경기, 이렇게 해서 히스토그램

db_score_gap<-dbGetQuery(conn,"SELECT
        K.SCHE_DATE MATCHDATE,
                         HT.TEAM_NAME || ' VS ' || AT.TEAM_NAME MATCH,
                         CASE
                         WHEN K.HOME_SCORE >= K.AWAY_SCORE THEN (K.HOME_SCORE - K.AWAY_SCORE)
                         ELSE K.AWAY_SCORE - K.HOME_SCORE
                         END SCOREGAP
                         FROM
                         SCHEDULE K
                         JOIN TEAM HT
                         ON K.HOMETEAM_ID LIKE HT.TEAM_ID
                         JOIN TEAM AT
                         ON K.AWAYTEAM_ID LIKE AT.TEAM_ID
                         WHERE
                         K.SCHE_DATE LIKE '2012%'
                         AND K.GUBUN LIKE 'Y'
                         
                         ORDER BY SCOREGAP DESC
                         ")
 
db_score_gap

hist(db_score_gap$SCOREGAP,xlab = "Weight",col = "red",border = "black")

##SQL27 팀별 골키퍼의 평균키로 라인차트

db_avg_height <-dbGetQuery(conn, "select 
    (select tb.team_name
                           from team tb
                           where tb.team_id like t.team_id) TEAMNAME,
                           round(avg(p.height),2) AVGHEIGHT 
                           from player p
                           join team t
                           on p.team_id like t.team_id
                           group by t.team_id
                           having avg(p.height)<(
                           select avg(pa.height)
                           from player pa
                           join team ta
                           on pa.team_id like ta.team_id
                           where ta.team_name like '삼성블루윙즈')")
db_avg_height
plot(db_avg_height$AVGHEIGHT,type = "o", col="red",ylim = c(165,185),axes=FALSE,ann =FALSE)
title(main = "AVEREGE HEIGHT", col.main="red")
axis(1, at=1:8, lab=c(db_avg_height$TEAMNAME))
axis(2, at=165:185)
title(xlab="TEAM NAME", col.lab="red")
title(ylab="HEIGHT", col.lab="red")

##SQL20 산포도 : 월별 경기수 

df_month_count <- dbGetQuery(conn,"SELECT
                             (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201201%') oneM,
                             (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201202%') twoM,
                             (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201203%') threeM,
                             (SELECT COUNT(*)  
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201204%') fourM,
                             (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201205%') fiveM,
                             (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201206%') sixM,
                             (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201207%') sevenM,
                             (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201208%') eightM,
                             (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201209%') nineM,
                             (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201210%') tenM,
                             (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201211%') eleM,
                             (SELECT COUNT(*)
                             FROM SCHEDULE
                             WHERE SCHE_DATE LIKE '201212%') twelM
                             FROM DUAL")
df_month_count

plot(x =c(1:12),y = df_month_count[,],
     xlab = "MONTH", col.lab ="red",
     ylab = "GAME COUNT",
     main = "GAME COUNT PER MONTH", axes=FALSE, col.main="red"
)
axis(1, at=1:12,lab=c("1월","2월","3월","4월","5월","6월","7월","8월","9월","10월","11월","12월")) 
axis(2,at=2*0:50)

##함수 만들기
rs <- dbGetQuery(conn, query)
barplot(rs[,2],names.arg=rs[,1], main = "승리수")